import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:sqlite3/sqlite3.dart';

import 'database_holder.dart';

class SqliteCubit extends Cubit<SqliteState> {
  static const _tableQuery =
      "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';";

  static String _tableSchemaQuery(String tableName) =>
      'PRAGMA table_info($tableName);';

  final _databaseHolder = DatabaseHolder.factory();

  SqliteCubit() : super(const SqliteState.init());

  void init() {
    _databaseHolder.isConnectedStream.listen(
      (isConnected) => emit(
        state.copyWith(
          databaseStatus: isConnected
              ? SqliteDatabaseStatus.connected
              : SqliteDatabaseStatus.disconnected,
        ),
      ),
    );
  }

  void execute(String query) {
    if (query.isEmpty) {
      return;
    }

    dynamic result;
    try {
      result = _databaseHolder.database.select(query);
    } on SqliteException catch (e) {
      result = e;
    }

    final tablesInfo = _getTablesInfo();

    emit(
      state.copyWith(
        tablesInfo: tablesInfo,
        history: [(query, result), ...state.history],
      ),
    );
  }

  void exportDatabase(String path) {
    final exportConn = sqlite3.open(path);
    final database = _databaseHolder.database;
    database.backup(exportConn).drain().whenComplete(exportConn.dispose);
  }

  Future<void> importDatabase(XFile file) async {
    await _databaseHolder.setDatabaseFromPath(file.path);
    final tablesInfo = _getTablesInfo();
    final fileInfo = FileInfo.fromPath(file.path);
    emit(state.copyWith(
      tablesInfo: tablesInfo,
      history: const [],
      fileInfo: fileInfo,
    ));
  }

  List<TableInfo> _getTablesInfo() {
    try {
      return _databaseHolder.database
          .select(_tableQuery)
          .map((row) => row['name'])
          .map((tableName) => (
                tableName,
                _databaseHolder.database.select(_tableSchemaQuery(tableName))
              ))
          .map(
            (data) => TableInfo(
              name: data.$1,
              columns: data.$2
                  .map((column) => ColumnInfo(
                        name: column['name'],
                        type: column['type'],
                        pk: column['pk'] == 1,
                      ))
                  .toList(),
            ),
          )
          .toList(growable: false);
    } on SqliteException catch (_) {
      return const [];
    }
  }

  void dropTable() {
    _databaseHolder.disposeDatabase();
    emit(const SqliteState.init());
  }
}

enum SqliteDatabaseStatus {
  disconnected,
  connected,
}

class FileInfo {
  final String folder;
  final String name;

  const FileInfo({
    required this.folder,
    required this.name,
  });

  FileInfo.fromPath(String path)
      : folder = context.dirname(path),
        name = context.basename(path);
}

class SqliteState {
  final List<TableInfo> tablesInfo;
  final List<(String, dynamic)> history;
  final SqliteDatabaseStatus databaseStatus;

  /// Info about imported database file
  final FileInfo? fileInfo;

  const SqliteState({
    required this.tablesInfo,
    required this.history,
    required this.databaseStatus,
    required this.fileInfo,
  });

  const SqliteState.init()
      : tablesInfo = const [],
        history = const [],
        databaseStatus = SqliteDatabaseStatus.disconnected,
        fileInfo = null;

  SqliteState copyWith({
    List<TableInfo>? tablesInfo,
    List<(String, dynamic)>? history,
    SqliteDatabaseStatus? databaseStatus,
    FileInfo? fileInfo,
  }) {
    return SqliteState(
      tablesInfo: tablesInfo ?? this.tablesInfo,
      history: history ?? this.history,
      databaseStatus: databaseStatus ?? this.databaseStatus,
      fileInfo: fileInfo ?? this.fileInfo,
    );
  }
}

class TableInfo {
  final String name;
  final List<ColumnInfo> columns;

  TableInfo({
    required this.name,
    required this.columns,
  });
}

class ColumnInfo {
  final String name;
  final String type;
  final bool pk;

  ColumnInfo({
    required this.name,
    required this.type,
    required this.pk,
  });
}
