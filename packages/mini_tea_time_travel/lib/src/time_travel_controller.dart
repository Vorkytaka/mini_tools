import 'dart:async';

import 'package:mini_tea/feature.dart';
import 'package:rxdart/rxdart.dart';

final class TimeTravelController implements Disposable {
  static final global = TimeTravelController();

  final _stateSubject = BehaviorSubject<TimeTravelState>.seeded(TimeTravelState(
    timeline: [],
    currentIndex: -1,
  ));
  final _timeTravelFeatures = <String, TimeTravelFeature>{};

  TimeTravelController();

  @override
  Future<void> dispose() async {
    await _stateSubject.close();
    _timeTravelFeatures.clear();
  }

  bool get isTimeTraveled => _stateSubject.value.currentIndex != -1;

  void clear() {
    // TODO
  }

  void register(String name, TimeTravelFeature feature) {
    _timeTravelFeatures[name] = feature;
    // TODO: Maybe save initial state?
  }

  void unregister(String name) {
    _timeTravelFeatures.remove(name);
  }

  void _onEvent(TimeTravelEvent event) {
    // TODO: Add timeline limit
    _stateSubject.add(
      TimeTravelState(
        timeline: [
          ..._stateSubject.value.timeline,
          event,
        ],
        currentIndex: _stateSubject.value.currentIndex,
      ),
    );
  }
}

final class TimeTravelState {
  final List<TimeTravelEvent> timeline;
  final int currentIndex;

  const TimeTravelState({
    required this.timeline,
    required this.currentIndex,
  });
}

// TODO: Migrate from ProxyFeature to a factory
final class TimeTravelFeature<State, Message, Effect>
    implements Feature<State, Message, Effect> {
  final TimeTravelController _timeTravelController;
  final String name;

  final Update<State, Message, Effect> _update;
  final List<EffectHandler<Effect, Message>> _effectHandlers;

  @override
  final List<Effect> initialEffects;

  @override
  final List<Effect> disposableEffects;

  final BehaviorSubject<State> _stateSubject;

  TimeTravelFeature({
    required this.name,
    required State initialState,
    required Update<State, Message, Effect> update,
    required List<EffectHandler<Effect, Message>> effectHandlers,
    List<Effect> initialEffects = const [],
    List<Effect> disposableEffects = const [],
    TimeTravelController? controller,
  })  : _timeTravelController = controller ?? TimeTravelController.global,
        _stateSubject = BehaviorSubject.seeded(initialState),
        _update = update,
        _effectHandlers = effectHandlers,
        initialEffects = List.unmodifiable(initialEffects),
        disposableEffects = List.unmodifiable(disposableEffects),
        assert(name.isNotEmpty);

  final _effectsController = StreamController<Effect>.broadcast();
  StreamSubscription? _effectSubscription;

  @override
  FutureOr<void> init() async {
    _timeTravelController.register(name, this);

    for (final effect in initialEffects) {
      _handleEffect(effect);
    }

    _listenForEffects();
  }

  @override
  Future<void> dispose() async {
    _timeTravelController.unregister(name);

    for (final effect in disposableEffects) {
      _handleEffect(effect);
    }

    await Future.wait(_effectHandlers
        .whereType<Disposable>()
        .map((disposable) => disposable.dispose()));

    await _effectSubscription?.cancel();
    await _stateSubject.close();
    await _effectsController.close();
  }

  @override
  State get state => _stateSubject.value;

  @override
  Stream<State> get stateStream => _stateSubject.stream;

  @override
  void accept(Message message) {
    final stateBefore = state;

    final (newState, effects) = _update(state, message);

    if (!_timeTravelController.isTimeTraveled) {
      if (newState != null && _stateSubject.value != newState) {
        _stateSubject.add(newState);
      }
      if (effects.isNotEmpty) {
        effects.forEach(_effectsController.add);
      }

      // TODO: Check if this is right place
      final stateAfter = newState ?? stateBefore;
      _timeTravelController._onEvent(TimeTravelEvent(
        feature: this,
        stateBefore: stateBefore,
        stateAfter: stateAfter,
        message: message,
      ));
    }
  }

  @override
  Stream<Effect> get effects => _effectsController.stream;

  void _listenForEffects() {
    _effectSubscription = effects.listen(_handleEffect);
  }

  /// Send [effect] to each effect handler in this feature.
  ///
  /// This will not send effect to the handlers that was added as wrapper
  void _handleEffect(Effect effect) {
    for (final handler in _effectHandlers) {
      handler(effect, accept);
    }
  }
}

// TODO: Bring types
// TODO: Migrate from feature itself to some ID or not?
final class TimeTravelEvent {
  final TimeTravelFeature feature;
  final dynamic stateBefore;
  final dynamic stateAfter;
  final dynamic message;

  const TimeTravelEvent({
    required this.feature,
    required this.stateBefore,
    required this.stateAfter,
    required this.message,
  });
}
