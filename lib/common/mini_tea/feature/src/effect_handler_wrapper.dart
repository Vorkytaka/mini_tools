part of 'feature.dart';

final class EffectHandlerWrapper<State, Msg, Effect, E extends Effect>
    extends ProxyFeature<State, Msg, Effect> {
  final EffectHandler<E, Msg> handler;

  StreamSubscription? _subscription;

  EffectHandlerWrapper({
    required super.feature,
    required this.handler,
  });

  @override
  FutureOr<void> init() {
    _subscription = effects
        .whereType<E>()
        .cast<E>()
        .listen((effect) => handler(effect, accept));
    return feature.init();
  }

  @override
  FutureOr<void> dispose() {
    _subscription?.cancel();
    return feature.dispose();
  }
}

extension EffectHandlerWrapperUtils<State, Msg, Effect>
    on Feature<State, Msg, Effect> {
  Feature<State, Msg, Effect> wrap<E extends Effect>(
    EffectHandler<E, Msg> handler,
  ) =>
      EffectHandlerWrapper(
        feature: this,
        handler: handler,
      );
}
