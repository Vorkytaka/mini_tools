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
        ),
      ]);
    case SetIdsMessage():
      return next(state: state.copyWith(ids: message.ids));
    case UpdateNamespaceMessage():
      final version = state.version.map(
        v1: (_) => throw Exception(),
        v4: (_) => throw Exception(),
        v5: (version) => version.copyWith(namespace: message.namespace.value),
      );

      return next(state: state.copyWith(version: version));
    case UpdateNameMessage():
      final version = state.version.map(
        v1: (_) => throw Exception(),
        v4: (_) => throw Exception(),
        v5: (version) => version.copyWith(name: message.name),
      );

      return next(state: state.copyWith(version: version));
  }
}
