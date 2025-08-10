import 'package:mini_tea/effect_handlers.dart';
import 'package:mini_tea/feature.dart';

import 'effect/number_base_effect.dart';
import 'message/number_base_message.dart';
import 'number_base_effect_handler.dart';
import 'state/number_base_state.dart';

export 'message/number_base_message.dart';
export 'state/number_base_state.dart';

part 'number_base_update.dart';

typedef NumberBaseFeature =
    Feature<NumberBaseState, NumberBaseMessage, NumberBaseEffect>;

NumberBaseFeature numberBaseFeatureFactory() =>
    Feature<NumberBaseState, NumberBaseMessage, NumberBaseEffect>(
          initialState: NumberBaseState.init(),
          update: _updateNumberBase,
          initialEffects: [const NumberBaseEffect.loadState()],
        )
        .wrapEffects(
          DebounceEffectHandler(
            duration: const Duration(milliseconds: 500),
            handler: const SaveNumberBaseEffectHandler(),
          ),
        )
        .wrapEffects(const LoadNumberBaseEffectHandler());
