import 'dart:async';

import 'package:mini_tea/feature.dart';
import 'package:rxdart/rxdart.dart';

// TODO: Think about how to handle -1/0 index, so we will not call first message and go to true init state
final class TimeTravelController implements Disposable {
  static final global = TimeTravelController();

  final _stateSubject = BehaviorSubject.seeded(_initialTimeTravelState);
  final _stopwatch = Stopwatch();

  final int _snapshotAtEach;

  TimeTravelController({
    int snapshotAtEach = 100,
  }) : _snapshotAtEach = snapshotAtEach;

  TimeTravelStateV2 get state => _stateSubject.value;

  @override
  Future<void> dispose() async {
    await _stateSubject.close();
    _stopwatch.stop();
  }

  bool get isTimeTraveled => _stateSubject.value.currentIndex != -1;

  void register(String name, TimeTravelFeature feature) {
    _stateSubject.add(state.copyWith(
      features: {
        ...state.features,
        name: feature,
      },
      stateSnapshots: [
        ...state.stateSnapshots.map((snapshot) => {
              ...snapshot,
              name: feature.state,
            }),
      ],
    ));

    if (state.timeline.isEmpty && state.features.length == 1) {
      _stopwatch.reset();
      _stopwatch.start();
    }
  }

  void unregister(String name) {
    _stateSubject.add(state.copyWith(
      features: {
        for (final featureName in state.features.keys)
          if (name != featureName) featureName: state.features[featureName]!,
      },
      stateSnapshots: [
        for (final snapshot in state.stateSnapshots)
          {
            for (final featureName in snapshot.keys)
              if (name != featureName) featureName: snapshot[featureName],
          }
      ],
    ));
  }

  void _onMessage(String featureName, dynamic message) {
    // TODO: Add timeline limit
    _stateSubject.add(
      _stateSubject.value.copyWith(
        timeline: [
          ..._stateSubject.value.timeline,
          (
            featureName: featureName,
            message: message,
            millisecondsSinceStart: _stopwatch.elapsedMilliseconds,
          ),
        ],
      ),
    );

    if (state.timeline.length % _snapshotAtEach == 0) {
      final states = <String, dynamic>{
        for (final featureName in state.features.keys)
          featureName: state.features[featureName]!.state,
      };

      _stateSubject.add(state.copyWith(
        stateSnapshots: [
          ...state.stateSnapshots,
          states,
        ],
      ));
    }
  }

  void goToStart() => _moveTo(0);

  void goToEnd() {
    if (_stateSubject.value.timeline.isEmpty) {
      return;
    }
    final lastIndex = _stateSubject.value.timeline.length - 1;
    _moveTo(lastIndex);
    // TODO: Don't set current index to -1 here
    // Exit time travel mode when explicitly going to end
    _stateSubject.add(_stateSubject.value.copyWith(currentIndex: -1));
  }

  void goBack() {
    // TODO: Validate this shit

    final currentIndex = _stateSubject.value.currentIndex;

    // If not time traveled, go to second-to-last
    if (currentIndex == -1) {
      if (_stateSubject.value.timeline.length >= 2) {
        _moveTo(_stateSubject.value.timeline.length - 2);
      }
      return;
    }

    // If at start, do nothing
    if (currentIndex == 0) {
      return;
    }

    _moveTo(currentIndex - 1);
  }

  void goForward() {
    // TODO: Validate this shit

    final currentIndex = _stateSubject.value.currentIndex;

    // If not time traveled, do nothing
    if (currentIndex == -1) {
      return;
    }

    // If at end, do nothing
    if (currentIndex == _stateSubject.value.timeline.length - 1) {
      return;
    }

    _moveTo(currentIndex + 1);
  }

  void _moveTo(int index) {
    assert(index >= 0 && index < _stateSubject.value.timeline.length);

    // Set time travel mode
    _stateSubject.add(_stateSubject.value.copyWith(currentIndex: index));

    final snapshotsIndex = (index ~/ _snapshotAtEach);
    final from = snapshotsIndex * _snapshotAtEach;

    final snapshots = state.stateSnapshots[snapshotsIndex];
    for (final featureName in state.features.keys) {
      final featureState = snapshots[featureName]!;
      final feature = state.features[featureName]!;

      feature._processState(featureState);
    }

    for (int i = from; i <= index; i++) {
      final event = _stateSubject.value.timeline[i];
      final feature = state.features[event.featureName]!;
      feature.accept(event.message);
    }

    // TODO: Maybe change current index to -1 here?
  }
}

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
    final (newState, effects) = _update(state, message);

    if (newState != null && _stateSubject.value != newState) {
      _stateSubject.add(newState);
    }

    if (!_timeTravelController.isTimeTraveled) {
      if (effects.isNotEmpty) {
        effects.forEach(_effectsController.add);
      }

      _timeTravelController._onMessage(name, message);
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

  void _processState(State state) => _stateSubject.add(state);
}

typedef TimeTravelStateV2 = ({
  List<TimeTravelEventV2> timeline,
  Map<String, TimeTravelFeature> features,
  List<Map<String, dynamic>> stateSnapshots,
  int currentIndex,
});

TimeTravelStateV2 get _initialTimeTravelState => (
      timeline: const [],
      features: const {},
      stateSnapshots: const [{}],
      currentIndex: -1,
    );

extension on TimeTravelStateV2 {
  TimeTravelStateV2 copyWith({
    List<TimeTravelEventV2>? timeline,
    Map<String, TimeTravelFeature>? features,
    List<Map<String, dynamic>>? stateSnapshots,
    int? currentIndex,
  }) =>
      (
        timeline: timeline?.toUnmodifiable ?? this.timeline,
        features: features?.toUnmodifiable ?? this.features,
        stateSnapshots: stateSnapshots?.toUnmodifiable ?? this.stateSnapshots,
        currentIndex: currentIndex ?? this.currentIndex,
      );
}

typedef TimeTravelEventV2<Message> = ({
  String featureName,
  Message message,
  int millisecondsSinceStart,
});

extension<E> on List<E> {
  List<E> get toUnmodifiable => List.unmodifiable(this);
}

extension<K, V> on Map<K, V> {
  Map<K, V> get toUnmodifiable => Map.unmodifiable(this);
}
