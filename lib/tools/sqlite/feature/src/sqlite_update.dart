import 'package:mini_tea/feature.dart';

import 'effect/sqlite_effect.dart';
import 'msg/sqlite_msg.dart';
import 'state/sqlite_state.dart';

Next<SqliteState, SqliteEffect> sqliteUpdate(
  SqliteState state,
  SqliteMsg message,
) {
  switch (message) {
    case ExecuteMsg():
      return next(effects: [SqliteEffect.execute(message.query)]);
    case QueryResultMsg():
      return next(
        state: state.copyWith(results: [message.result, ...state.results]),
        effects: [const SqliteEffect.updateTables()],
      );
    case ImportDbMsg():
      return next(effects: [ImportDbEffect(message.path)]);
    case ExportDbMsg():
      return next(effects: [SqliteEffect.exportDb(message.path)]);
    case DropTableMsg():
      return next(effects: [const SqliteEffect.dropTable()]);
    case TableInfoMsg():
      return next(state: state.copyWith(tables: message.tables));
    case ConnectionChangedMsg():
      final isConnected = message.connection.isConnected;
      final newState = isConnected
          ? state.copyWith(connection: message.connection)
          : SqliteState.init;

      return next(
        state: newState,
        effects: [
          if (isConnected) const SqliteEffect.updateTables(),
        ],
      );
    case DisposeMsg():
      return next(
        effects: [const SqliteEffect.unsubscribeDb()],
      );
  }
}
