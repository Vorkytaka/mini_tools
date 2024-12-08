// ignore_for_file: implicit_call_tearoffs

import '../../../common/mini_tea/feature/feature.dart';
import 'src/effect/sqlite_effect.dart';
import 'src/msg/sqlite_msg.dart';
import 'src/sqlite_effect_handler.dart';
import 'src/sqlite_update.dart';
import 'src/state/sqlite_state.dart';

export 'src/effect/sqlite_effect.dart';
export 'src/msg/sqlite_msg.dart';
export 'src/sqlite_effect_handler.dart';
export 'src/sqlite_update.dart';
export 'src/state/sqlite_state.dart';

typedef SqliteFeature = Feature<SqliteState, SqliteMsg, SqliteEffect>;

SqliteFeature sqliteFeatureFactory() => SqliteFeature(
      initialState: SqliteState.init,
      update: sqliteUpdate,
      effectHandlers: [SqliteEffectHandler()],
      initialEffects: [const SqliteEffect.subscribeDb()],
    );
