import 'dart:async';

import 'package:mini_tea/feature.dart';
import 'package:rxdart/rxdart.dart';

final class TimeTravelController implements Disposable {
  static final global = TimeTravelController();

  final _stateSubject = BehaviorSubject<TimeTravelStateV2>.seeded((
    timeline: [],
    currentIndex: -1,
  ));
  final _timeTravelFeatures = <String, TimeTravelFeature>{};
  final _snapshots = <Map<String, dynamic>>[{}];
  final _stopwatch = Stopwatch();

  TimeTravelController();

  @override
  Future<void> dispose() async {
    await _stateSubject.close();
    _timeTravelFeatures.clear();
    _stopwatch.stop();
  }

  bool get isTimeTraveled => _stateSubject.value.currentIndex != -1;

  void register(String name, TimeTravelFeature feature) {
    _timeTravelFeatures[name] = feature;
    _snapshots.last[name] = feature.state;

    if (_stateSubject.value.timeline.isEmpty &&
        _timeTravelFeatures.length == 1) {
      _stopwatch.reset();
      _stopwatch.start();
    }
  }

  void unregister(String name) {
    _timeTravelFeatures.remove(name);
    // TODO: Remove feature from snapshots
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

    if (_stateSubject.value.timeline.length % 100 == 0) {
      final states = <String, dynamic>{
        for (final featureName in _timeTravelFeatures.keys)
          featureName: _timeTravelFeatures[featureName]!.state,
      };
      _snapshots.add(states);
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

    if (!_timeTravelController.isTimeTraveled) {
      if (newState != null && _stateSubject.value != newState) {
        _stateSubject.add(newState);
      }
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
}

typedef TimeTravelStateV2 = ({
  List<TimeTravelEventV2> timeline,
  int currentIndex,
});

extension on TimeTravelStateV2 {
  TimeTravelStateV2 copyWith({
    List<TimeTravelEventV2>? timeline,
    int? currentIndex,
  }) =>
      (
        timeline: timeline ?? this.timeline,
        currentIndex: currentIndex ?? this.currentIndex,
      );
}

typedef TimeTravelEventV2<Message> = ({
  String featureName,
  Message message,
  int millisecondsSinceStart,
});
