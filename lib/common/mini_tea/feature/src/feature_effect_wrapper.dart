part of 'feature.dart';

/// Wrapper around another Feature
final class FeatureEffectWrapper<State, Msg, Effect, E extends Effect>
    extends ProxyFeature<State, Msg, Effect> {
  final EffectHandler<E, Msg> handler;

  StreamSubscription? _subscription;

  FeatureEffectWrapper({
    required super.feature,
    required this.handler,
  });

  @override
  FutureOr<void> init() {
    _subscription =
        effects.whereType<E>().listen((effect) => handler(effect, accept));

    for (final effect in initialEffects) {
      if (effect is E) {
        handler(effect, accept);
      }
    }

    return feature.init();
  }

  @override
  Future<void> dispose() async {
    for (final effect in disposableEffects) {
      if (effect is E) {
        await handler(effect, accept);
      }
    }

    if (handler is Disposable) {
      await (handler as Disposable).dispose();
    }

    await _subscription?.cancel();
    return feature.dispose();
  }
}

extension EffectHandlerWrapperUtils<State, Msg, Effect>
    on Feature<State, Msg, Effect> {
  Feature<State, Msg, Effect> wrap<E extends Effect>(
    EffectHandler<E, Msg> handler,
  ) =>
      FeatureEffectWrapper(
        feature: this,
        handler: handler,
      );
}
