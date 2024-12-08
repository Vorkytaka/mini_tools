part of 'feature.dart';

abstract base class ProxyFeature<S, Ev, Ef> implements Feature<S, Ev, Ef> {
  final Feature<S, Ev, Ef> feature;

  const ProxyFeature({required this.feature});

  @override
  void accept(Ev event) => feature.accept(event);

  @override
  FutureOr<void> dispose() => feature.dispose();

  @override
  Stream<Ef> get effects => feature.effects;

  @override
  FutureOr<void> init() => feature.init();

  @override
  S get state => feature.state;

  @override
  Stream<S> get stateStream => feature.stateStream;
}
