import 'package:mini_tea/feature.dart';

import 'effect/regexp_effect.dart';
import 'message/regexp_message.dart';
import 'regexp_effect_handler.dart';
import 'regexp_update.dart';
import 'state/regexp_state.dart';

export 'effect/regexp_effect.dart';
export 'message/regexp_message.dart';
export 'regexp_effect_handler.dart';
export 'regexp_update.dart';
export 'state/regexp_state.dart';

typedef RegExpFeature = Feature<RegExpState, RegExpMessage, RegExpEffect>;

RegExpFeature regExpFeatureFactory() => Feature(
  initialState: RegExpState.init(),
  update: regExpUpdate,
  effectHandlers: const [RegExpEffectHandler()],
);
