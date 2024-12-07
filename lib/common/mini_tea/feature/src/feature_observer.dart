part of 'feature.dart';

abstract class FeatureObserver<S, Ev, Ef, N> {
  void onCreate(Feature<S, Ev, Ef, N> feature) {}

  void onInit() {}

  void onDispose() {}

  void onState(S state) {}

  void onEvent(Ev event) {}

  void onEffect(Ef effect) {}

  void onNews(N news) {}
}

final class FeatureObserverWrapper<S, Ev, Ef, N>
    extends ProxyFeature<S, Ev, Ef, N> {
  final FeatureObserver<S, Ev, Ef, N> observer;
  final _subscription = CompositeSubscription();

  FeatureObserverWrapper({
    required super.feature,
    required this.observer,
  }) {
    observer.onCreate(feature);
  }

  @override
  void accept(Ev event) {
    observer.onEvent(event);
    super.accept(event);
  }

  @override
  FutureOr<void> init() {
    observer.onInit();
    stateStream.listen(observer.onState).addTo(_subscription);
    effects.listen(observer.onEffect).addTo(_subscription);
    news.listen(observer.onNews).addTo(_subscription);
    return super.init();
  }

  @override
  FutureOr<void> dispose() {
    observer.onDispose();
    _subscription.dispose();
    return super.dispose();
  }
}
