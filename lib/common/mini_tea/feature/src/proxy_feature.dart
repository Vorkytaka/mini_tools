part of 'feature.dart';

abstract base class ProxyFeature<State, Msg, Effect>
    implements Feature<State, Msg, Effect> {
  final Feature<State, Msg, Effect> feature;

  const ProxyFeature({required this.feature});

  @override
  List<Effect> get initialEffects => feature.initialEffects;

  @override
  List<Effect> get disposableEffects => feature.disposableEffects;

  @override
  void accept(Msg message) => feature.accept(message);

  @override
  Future<void> dispose() => feature.dispose();

  @override
  Stream<Effect> get effects => feature.effects;

  @override
  FutureOr<void> init() => feature.init();

  @override
  State get state => feature.state;

  @override
  Stream<State> get stateStream => feature.stateStream;
}
