import 'package:mini_tea/feature.dart';

import 'effect/text_diff_effect.dart';
import 'message/text_diff_message.dart';
import 'state/text_diff_state.dart';
import 'text_diff_effect_handler.dart';
import 'text_diff_update.dart';

export 'effect/text_diff_effect.dart';
export 'message/text_diff_message.dart';
export 'state/text_diff_state.dart';

typedef TextDiffFeature
    = Feature<TextDiffState, TextDiffMessage, TextDiffEffect>;

TextDiffFeature textDiffFeatureFactory() => Feature(
      initialState: TextDiffState.init(),
      update: textDiffUpdate,
      effectHandlers: [TextDiffEffectHandler()],
    );
