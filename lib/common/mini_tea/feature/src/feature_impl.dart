part of 'feature.dart';

final class _FeatureImpl<State, Event, Effect>
    implements Feature<State, Event, Effect> {
  final Update<State, Event, Effect> _update;
  final List<EffectHandler<Effect, Event>> _effectHandlers;
  final List<Effect> _initialEffects;

  _FeatureImpl({
    required State initialState,
    required Update<State, Event, Effect> update,
    required List<EffectHandler<Effect, Event>> effectHandlers,
    List<Effect> initialEffects = const [],
  })  : _stateSubject = BehaviorSubject.seeded(initialState),
        _update = update,
        _effectHandlers = List.unmodifiable(effectHandlers),
        _initialEffects = List.unmodifiable(initialEffects);

  final BehaviorSubject<State> _stateSubject;
  final _effectsController = StreamController<Effect>.broadcast();
  final _handlersSubscriptions = CompositeSubscription();

  @override
  Stream<State> get stateStream => _stateSubject.stream;

  @override
  State get state => _stateSubject.value;

  @override
  Stream<Effect> get effects => _effectsController.stream;

  @override
  void accept(Event event) {
    final (newState, effects) = _update(_stateSubject.value, event);
    if (newState != null) {
      _stateSubject.add(newState);
    }
    if (effects.isNotEmpty) {
      effects.forEach(_effectsController.add);
    }
  }

  @override
  void init() {
    for (final effect in _initialEffects) {
      _handleEffect(effect);
    }

    _listenForEffects();
  }

  @override
  Future<void> dispose() async {
    await _handlersSubscriptions.clear();
    await _stateSubject.close();
    await _effectsController.close();
  }

  void _listenForEffects() {
    effects.listen(_handleEffect).addTo(_handlersSubscriptions);
  }

  void _handleEffect(Effect effect) {
    for (final handler in _effectHandlers) {
      handler(effect, accept);
    }
  }
}
