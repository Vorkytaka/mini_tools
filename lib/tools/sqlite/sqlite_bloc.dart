import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite3/sqlite3.dart';

class SqliteCubit extends Cubit<SqliteState> {
  static const _tableQuery =
      "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';";

  static String _tableSchemaQuery(String tableName) =>
      'PRAGMA table_info($tableName);';

  final _databaseHolder = DatabaseHolder();

  SqliteCubit() : super(const SqliteState.init());

  void init() {
    _databaseHolder.isDatabaseConnectedStream.listen(
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
    await _databaseHolder.setDatabaseFromFile(file);
    final tablesInfo = _getTablesInfo();
    emit(state.copyWith(
      tablesInfo: tablesInfo,
      history: const [],
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
    _databaseHolder.dispose();
    emit(const SqliteState.init());
  }
}

enum SqliteDatabaseStatus {
  disconnected,
  connected,
}

class SqliteState {
  final List<TableInfo> tablesInfo;
  final List<(String, dynamic)> history;
  final SqliteDatabaseStatus databaseStatus;

  const SqliteState({
    required this.tablesInfo,
    required this.history,
    required this.databaseStatus,
  });

  const SqliteState.init()
      : tablesInfo = const [],
        history = const [],
        databaseStatus = SqliteDatabaseStatus.disconnected;

  SqliteState copyWith({
    List<TableInfo>? tablesInfo,
    List<(String, dynamic)>? history,
    SqliteDatabaseStatus? databaseStatus,
  }) {
    return SqliteState(
      tablesInfo: tablesInfo ?? this.tablesInfo,
      history: history ?? this.history,
      databaseStatus: databaseStatus ?? this.databaseStatus,
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

class DatabaseHolder {
  Database? _database;
  final _streamController = StreamController<Database?>.broadcast();

  DatabaseHolder();

  Stream<bool> get isDatabaseConnectedStream =>
      _streamController.stream.map((db) => db != null);

  Database get database {
    if (_database == null) {
      _database = sqlite3.openInMemory();
      _streamController.add(_database);
    }
    return _database!;
  }

  Future<void> setDatabaseFromFile(XFile file) async {
    final fileConn = sqlite3.open(file.path);
    final inMemConn = sqlite3.openInMemory();
    try {
      await fileConn.backup(inMemConn).drain();
      setDatabase(inMemConn);
    } on SqliteException catch (_) {
      inMemConn.dispose();
    } finally {
      fileConn.dispose();
    }
  }

  void setDatabase(Database database) {
    if (_database != null) {
      dispose();
    }
    _database = database;
    _streamController.add(_database);
  }

  void dispose() {
    _database?.dispose();
    _database = null;
    _streamController.add(null);
  }
}
