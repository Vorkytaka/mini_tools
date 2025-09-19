import 'package:mini_tea/effect_handlers.dart';
import 'package:mini_tea/feature.dart';

import 'cron_effect_handler.dart';
import 'cron_update.dart';
import 'effect/cron_effect.dart';
import 'message/cron_message.dart';
import 'state/cron_state.dart';

export 'message/cron_message.dart';
export 'state/cron_state.dart';

typedef CronFeature = Feature<CronState, CronMessage, CronEffect>;

CronFeature cronFeatureFactory() => CronFeature(
      initialState: CronState.init(),
      update: cronUpdate,
      initialEffects: const [CronEffect.load()],
    )
    .wrapEffects(const CronLoadEffectHandler())
    .wrapEffects(
      DebounceEffectHandler(
        duration: const Duration(milliseconds: 500),
        handler: const CronSaveEffectHandler(),
      ),
    );
