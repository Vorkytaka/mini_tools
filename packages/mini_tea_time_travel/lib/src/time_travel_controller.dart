import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:mini_tea/feature.dart';
import 'package:rxdart/rxdart.dart';

final class TimeTravelController implements Disposable {
  static final global = TimeTravelController();

  final _stateSubject = BehaviorSubject.seeded(_initialTimeTravelState);
  final _stopwatch = Stopwatch();

  final int _snapshotAtEach;

  bool _serviceExtensionRegistered = false;
  StreamSubscription? _stateSubscription;

  TimeTravelController({
    int snapshotAtEach = 100,
  }) : _snapshotAtEach = snapshotAtEach;

  TimeTravelStateV2 get state => _stateSubject.value;

  @override
  Future<void> dispose() async {
    await _stateSubscription?.cancel();
    await _stateSubject.close();
    _stopwatch.stop();
  }

  bool get isTimeTraveling => _stateSubject.value.navigation.isTimeTraveling;

  /// Serializes the current time travel state to a JSON-compatible map.
  ///
  /// Used by the DevTools extension to read the state via service extension.
  Map<String, dynamic> toJson() => {
        'timeline': state.timeline
            .map((e) => {
                  'featureName': e.featureName,
                  'message': e.message.toString(),
                  'millisecondsSinceStart': e.millisecondsSinceStart,
                })
            .toList(),
        'navigation': {
          'currentIndex': state.navigation.currentIndex,
          'isTimeTraveling': state.navigation.isTimeTraveling,
        },
        'features': state.features.keys.toList(),
      };

  void _ensureServiceExtension() {
    if (_serviceExtensionRegistered) return;
    _serviceExtensionRegistered = true;

    developer.registerExtension(
      'ext.miniTea.getTimeTravelState',
      (method, params) async {
        return developer.ServiceExtensionResponse.result(
          jsonEncode(toJson()),
        );
      },
    );

    _stateSubscription = _stateSubject.stream.listen((_) {
      developer.postEvent('ext.miniTea.stateChanged', {});
    });
  }

  void register(String name, TimeTravelFeature feature) {
    _ensureServiceExtension();

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

  void endTimeTravel() {
    // First restore to final state
    goToEnd();

    // Then exit time travel mode
    _stateSubject.add(
      state.copyWith(
        navigation: (
          currentIndex: null,
          isTimeTraveling: false,
        ),
      ),
    );
  }

  void goToStart() {
    _moveTo(-1);
  }

  void goToEnd() {
    if (state.timeline.isEmpty) {
      // No events to replay, stay at initial state
      _moveTo(-1);
      return;
    }

    // Restore to final state by replaying all events
    _moveTo(state.timeline.length - 1);
  }

  void goBack() {
    final currentIndex = state.navigation.currentIndex;
    final isTimeTraveling = state.navigation.isTimeTraveling;

    if (currentIndex == null && !isTimeTraveling) {
      // Not yet time traveling
      if (state.timeline.length < 2) {
        // Not enough events to step back, do nothing
        return;
      }
      // Start from one step before the end
      _moveTo(state.timeline.length - 2);
    } else if (currentIndex == null && isTimeTraveling) {
      // Already at initial state while time traveling, do nothing
      return;
    } else if (currentIndex == 0) {
      // At first event, go to initial state (null index)
      _moveTo(-1);
    } else {
      // Step back one event
      _moveTo(currentIndex! - 1);
    }
  }

  void goForward() {
    final currentIndex = state.navigation.currentIndex;
    final isTimeTraveling = state.navigation.isTimeTraveling;

    if (!isTimeTraveling) {
      // Not time traveling, do nothing
      return;
    }

    if (currentIndex == null) {
      // At initial state, move to first event
      if (state.timeline.isEmpty) {
        return;
      }
      _moveTo(0);
    } else if (currentIndex >= state.timeline.length - 1) {
      // Already at the end, do nothing
      return;
    } else {
      _moveTo(currentIndex + 1);
    }
  }

  void _moveTo(int index) {
    assert(index >= -1 && index < _stateSubject.value.timeline.length);

    // Set time travel mode
    // When index is -1, we're at the initial state, represented by null
    _stateSubject.add(
      _stateSubject.value.copyWith(
        navigation: (
          currentIndex: index == -1 ? null : index,
          isTimeTraveling: true,
        ),
      ),
    );

    final snapshotsIndex = (index ~/ _snapshotAtEach);
    final from = snapshotsIndex * _snapshotAtEach;

    final Map<String, dynamic> snapshots;
    if (index == -1) {
      snapshots = state.stateSnapshots.first;
    } else {
      snapshots = state.stateSnapshots[snapshotsIndex];
    }

    // Что если такая ситуация
    // - - - - - - - - - - - - - - - - - - - - ->
    // |     |            |        |       |
    // первый снапшот     |        второй снапшот
    //       |            |                |
    //       фича А       |                фича Б
    //                    передвигаемся сюда
    //
    // В таком случае получется, что фича Б не будет восстановлена
    // а значит может сломаться, когда дойдем до ее message
    // надо искать для всех фичей состояние
    for (final featureName in state.features.keys) {
      final featureState = snapshots[featureName]!;
      final feature = state.features[featureName]!;

      feature._processState(featureState);
    }

    if (index >= 0) {
      for (int i = from; i <= index; i++) {
        final event = _stateSubject.value.timeline[i];
        final feature = state.features[event.featureName]!;
        feature.accept(event.message);
      }
    }
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

    if (!_timeTravelController.isTimeTraveling) {
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

typedef TimeTravelNavigation = ({
  /// The index of the currently viewed event in the timeline.
  /// `null` means we are viewing the initial state (before any messages).
  int? currentIndex,

  /// Whether we are currently in time travel mode.
  /// When `true`, effects are suppressed and new messages are not recorded.
  bool isTimeTraveling,
});

typedef TimeTravelStateV2 = ({
  List<TimeTravelEventV2> timeline,
  Map<String, TimeTravelFeature> features,
  List<Map<String, dynamic>> stateSnapshots,
  TimeTravelNavigation navigation,
});

TimeTravelStateV2 get _initialTimeTravelState => (
      timeline: const [],
      features: const {},
      stateSnapshots: const [{}],
      navigation: (currentIndex: null, isTimeTraveling: false),
    );

extension on TimeTravelStateV2 {
  TimeTravelStateV2 copyWith({
    List<TimeTravelEventV2>? timeline,
    Map<String, TimeTravelFeature>? features,
    List<Map<String, dynamic>>? stateSnapshots,
    TimeTravelNavigation? navigation,
  }) =>
      (
        timeline: timeline?.toUnmodifiable ?? this.timeline,
        features: features?.toUnmodifiable ?? this.features,
        stateSnapshots: stateSnapshots?.toUnmodifiable ?? this.stateSnapshots,
        navigation: navigation ?? this.navigation,
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
