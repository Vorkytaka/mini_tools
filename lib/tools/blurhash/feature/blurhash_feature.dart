import 'package:mini_tea/feature.dart';

import 'blurhash_effect_handler.dart';
import 'blurhash_update.dart';
import 'effect/blurhash_effect.dart';
import 'message/blurhash_message.dart';
import 'state/blurhash_state.dart';

typedef BlurhashFeature
    = Feature<BlurhashState, BlurhashMessage, BlurhashEffect>;

BlurhashFeature blurhashFeatureFactory() => BlurhashFeature(
      initialState: BlurhashState.defaultValue,
      update: blurhashUpdate,
      effectHandlers: const [BlurhashEffectHandler()],
    );
