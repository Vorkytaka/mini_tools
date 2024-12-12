part of 'feature.dart';

abstract class FeatureObserver<State, Msg, Effect> {
  void onCreate(Feature<State, Msg, Effect> feature) {}

  void onInit() {}

  void onDispose() {}

  void onState(State state) {}

  void onMsg(Msg message) {}

  void onEffect(Effect effect) {}
}

final class FeatureObserverWrapper<State, Msg, Effect>
    extends ProxyFeature<State, Msg, Effect> {
  final FeatureObserver<State, Msg, Effect> observer;
  final _subscription = CompositeSubscription();

  FeatureObserverWrapper({
    required super.feature,
    required this.observer,
  }) {
    observer.onCreate(feature);
  }

  @override
  void accept(Msg message) {
    observer.onMsg(message);
    super.accept(message);
  }

  @override
  FutureOr<void> init() {
    observer.onInit();
    stateStream.listen(observer.onState).addTo(_subscription);
    effects.listen(observer.onEffect).addTo(_subscription);
    return super.init();
  }

  @override
  Future<void> dispose() {
    observer.onDispose();
    _subscription.dispose();
    return super.dispose();
  }
}

extension FeatureObserverWrapperHelper<S, M, E> on Feature<S, M, E> {
  Feature<S, M, E> observe(FeatureObserver<S, M, E> observer) =>
      FeatureObserverWrapper(
        feature: this,
        observer: observer,
      );
}
