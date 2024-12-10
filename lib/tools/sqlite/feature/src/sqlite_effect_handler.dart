import 'dart:async';

import 'package:path/path.dart';
import 'package:sqlite3/sqlite3.dart';

import '../../../../common/mini_tea/feature/feature.dart';
import '../../database_holder.dart';
import 'effect/sqlite_effect.dart';
import 'msg/sqlite_msg.dart';
import 'state/sqlite_state.dart';

final class SqliteEffectHandler
    implements EffectHandler<SqliteEffect, SqliteMsg> {
  final NewDatabaseHolder _databaseHolder = NewDatabaseHolderImpl();
  StreamSubscription? _subscription;

  @override
  Future<void> call(
    SqliteEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    switch (effect) {
      case ExecuteEffect():
        return _execute(effect, emit);
      case UpdateTablesEffect():
        return _updateTables(effect, emit);
      case ImportDbEffect():
        return _importDb(effect, emit);
      case ExportDbEffect():
        return _exportDb(effect, emit);
      case SubscribeDbEffect():
        return _subscribeDb(effect, emit);
      case UnsubscribeDbEffect():
        return _unsubscribeDb(effect, emit);
      case DropTableEffect():
        return _dropTable(effect, emit);
    }
  }

  Future<void> _exportDb(
    ExportDbEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    final database = await _databaseHolder.database.first;
    if (database != null) {
      final exportConn = sqlite3.open(effect.path);
      await database
          .backup(exportConn)
          .drain()
          .whenComplete(exportConn.dispose);
    }
  }

  Future<void> _dropTable(
    DropTableEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    _databaseHolder.disposeDatabase();
  }

  Future<void> _subscribeDb(
    SubscribeDbEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    _subscription = _databaseHolder.connection.listen((conn) {
      final stateConn = switch (conn) {
        Disconnect() => const Disconnected(),
        InMemory() => const InMemoryConnection(),
        File() => FileConnection(
            folder: conn.path,
            name: context.basename(conn.path),
          ),
      };

      emit(SqliteMsg.connectionChanged(stateConn));
    });
  }

  Future<void> _unsubscribeDb(
    UnsubscribeDbEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    await _subscription?.cancel();
    _subscription = null;
  }

  Future<void> _importDb(
    ImportDbEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    await _databaseHolder.fromPath(effect.path);
  }

  Future<void> _execute(
    ExecuteEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    final query = effect.query;
    final datetime = DateTime.now();

    final queryResult = _databaseHolder.execute(effect.query);
    final result = queryResult.leftMap(_formatException).fold(
          ifLeft: (err) => Result.failure(
            query: query,
            datetime: datetime,
            error: err,
          ),
          ifRight: (result) => Result.success(
            query: query,
            datetime: datetime,
            result: result,
          ),
        );

    emit(SqliteMsg.queryResult(result));
  }

  Future<void> _updateTables(
    UpdateTablesEffect effect,
    MsgEmitter<SqliteMsg> emit,
  ) async {
    final tables = _databaseHolder
        .rawExecute(_tablesQuery)
        .map((row) => row['name'] as String)
        .map(
          (tableName) => (
            tableName,
            _databaseHolder.rawExecute(_tableSchemaQuery(tableName))
          ),
        )
        .map(_getTableInfo)
        .toList(growable: false);

    emit(SqliteMsg.tableInfo(tables));
  }

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

  static const _tablesQuery =
      "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';";

  static String _tableSchemaQuery(String tableName) =>
      'PRAGMA table_info($tableName);';
}
