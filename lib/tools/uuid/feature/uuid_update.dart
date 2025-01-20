import 'package:mini_tea/feature.dart';

import 'effect/uuid_effect.dart';
import 'message/uuid_message.dart';
import 'state/uuid_state.dart';

Next<UuidState, UuidEffect> uuidUpdate(UuidState state, UuidMessage message) {
  switch (message) {
    case UpdateVersionMessage():
      return next(state: state.copyWith(version: message.version));
    case UpdateCountMessage():
      return next(state: state.copyWith(count: message.count));
    case GenerateMessage():
      return next(effects: [
        UuidEffect.generate(
          version: state.version,
          count: state.count,
          namespace: state.namespace,
          name: state.name,
        ),
      ]);
    case SetIdsMessage():
      return next(state: state.copyWith(ids: message.ids));
    case UpdateNamespaceMessage():
      return next(state: state.copyWith(namespace: message.namespace));
    case UpdateNameMessage():
      return next(state: state.copyWith(name: message.name));
  }
}
