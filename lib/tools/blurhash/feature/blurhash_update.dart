import 'package:mini_tea/feature.dart';

import 'effect/blurhash_effect.dart';
import 'message/blurhash_message.dart';
import 'state/blurhash_state.dart';

Next<BlurhashState, BlurhashEffect> blurhashUpdate(
  BlurhashState state,
  BlurhashMessage message,
) {
  switch (message) {
    case SelectFileMessage():
      return next(effects: [const BlurhashEffect.selectFile()]);
    case SetOriginMessage():
      return next(state: state.copyWith(origin: message.origin));
    case SetBlurhashMessage():
      return next(state: state.copyWith(blurhash: message.blurhash));
  }
}
