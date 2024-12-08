part of 'feature.dart';

final class EffectHandlerWrapper<State, Event, Effect, E extends Effect>
    extends ProxyFeature<State, Event, Effect> {
  final EffectHandler<E, Event> handler;

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

extension EffectHandlerWrapperUtils<State, Event, Effect>
    on Feature<State, Event, Effect> {
  Feature<State, Event, Effect> wrap<E extends Effect>(
    EffectHandler<E, Event> handler,
  ) =>
      EffectHandlerWrapper(
        feature: this,
        handler: handler,
      );
}
