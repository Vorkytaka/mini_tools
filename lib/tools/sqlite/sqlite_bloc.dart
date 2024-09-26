import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:sqlite3/sqlite3.dart';

import '../../common/either.dart';
import 'database_holder.dart';

class SqliteCubit extends Cubit<SqliteState> {
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

    final result = _databaseHolder.execute(query).leftMap(_formatException);
    final queryResult = QueryResult(
      query: query,
      result: result,
      datetime: DateTime.now(),
    );
    emit(state.copyWith(history: [queryResult, ...state.history]));

    _updateTablesInfo();
  }

  void exportDatabase(String path) {
    final exportConn = sqlite3.open(path);
    final database = _databaseHolder.database;
    database.backup(exportConn).drain().whenComplete(exportConn.dispose);
  }

  Future<void> importDatabase(XFile file) async {
    final isSuccess = await _databaseHolder.setDatabaseFromPath(file.path);
    if (isSuccess) {
      _updateTablesInfo();
      final fileInfo = FileInfo.fromPath(file.path);
      emit(state.copyWith(
        history: const [],
        fileInfo: fileInfo,
      ));
    }
  }

  void dropTable() {
    _databaseHolder.disposeDatabase();
    emit(const SqliteState.init());
  }

  void _updateTablesInfo() {
    final info = _getTablesInfo();
    emit(state.copyWith(tablesInfo: info));
  }

  List<TableInfo> _getTablesInfo() {
    try {
      return _databaseHolder.database
          .select(_tablesQuery)
          .map((row) => row['name'] as String)
          .map(
            (tableName) => (
              tableName,
              _databaseHolder.database.select(_tableSchemaQuery(tableName))
            ),
          )
          .map(_getTableInfo)
          .toList(growable: false);
    } on SqliteException catch (_) {
      return const [];
    }
  }

  static const _tablesQuery =
      "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';";

  static String _tableSchemaQuery(String tableName) =>
      'PRAGMA table_info($tableName);';

  static String _formatException(SqliteException exception) {
    return 'Error code ${exception.extendedResultCode}: ${exception.message}';
  }

  static TableInfo _getTableInfo(
      (String, Iterable<Map<String, dynamic>>) data) {
    return TableInfo(
        name: data.$1, columns: data.$2.map(_getColumnInfo).toList());
  }

  static ColumnInfo _getColumnInfo(Map<String, dynamic> row) {
    return ColumnInfo(
      name: row['name'],
      type: row['type'],
      pk: row['pk'] == 1,
    );
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

class QueryResult {
  final String query;
  final Either<String, Iterable<dynamic>> result;
  final DateTime datetime;

  const QueryResult({
    required this.query,
    required this.result,
    required this.datetime,
  });
}

class SqliteState {
  final List<TableInfo> tablesInfo;
  final List<QueryResult> history;
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
    List<QueryResult>? history,
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
