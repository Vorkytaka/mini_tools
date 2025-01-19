import 'package:mini_tea/feature.dart';

import 'effect/uuid_effect.dart';
import 'message/uuid_message.dart';
import 'state/uuid_state.dart';
import 'uuid_effect_handler.dart';
import 'uuid_update.dart';

export 'effect/uuid_effect.dart';
export 'message/uuid_message.dart';
export 'state/uuid_state.dart';

typedef UuidFeature = Feature<UuidState, UuidMessage, UuidEffect>;

UuidFeature uuidFeatureFactory() => Feature<UuidState, UuidMessage, UuidEffect>(
      initialState: const UuidState(version: UuidVersion.v4(), count: 1, ids: []),
      update: uuidUpdate,
      effectHandlers: [UuidEffectHandler()],
      initialEffects: [const UuidEffect.init()],
    );
