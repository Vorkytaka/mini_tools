import '../../../../common/mini_tea/feature/feature.dart';
import 'effect/sqlite_effect.dart';
import 'event/sqlite_event.dart';
import 'state/sqlite_state.dart';

Next<SqliteState, SqliteEffect> sqliteUpdate(
  SqliteState state,
  SqliteEvent event,
) {
  switch (event) {
    case ExecuteEvent():
      return next(effects: [SqliteEffect.execute(event.query)]);
    case QueryResultEvent():
      return next(
        state: state.copyWith(results: [event.result, ...state.results]),
        effects: [const SqliteEffect.updateTables()],
      );
    case ImportDbEvent():
      return next(effects: [ImportDbEffect(event.path)]);
    case ExportDbEvent():
      return next(effects: [SqliteEffect.exportDb(event.path)]);
    case DropTable():
      return next(effects: [const SqliteEffect.dropTable()]);
    case TableInfoEvent():
      return next(state: state.copyWith(tables: event.tables));
    case ConnectionChangedEvent():
      final isConnected = event.connection.isConnected;
      final newState = isConnected
          ? state.copyWith(connection: event.connection)
          : SqliteState.init;

      return next(
        state: newState,
        effects: [
          if (isConnected) const SqliteEffect.updateTables(),
        ],
      );
    case DisposeEvent():
      return next(
        effects: [const SqliteEffect.unsubscribeDb()],
      );
  }
}
