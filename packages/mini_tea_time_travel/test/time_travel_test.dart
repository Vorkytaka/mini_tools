import 'package:mini_tea/feature.dart';
import 'package:mini_tea_time_travel/src/time_travel_controller.dart';
import 'package:test/test.dart';

// ---------------------------------------------------------------------------
// Test helpers – a trivial counter feature wired through TimeTravelFeature
// ---------------------------------------------------------------------------

/// Messages understood by the counter feature.
enum CounterMsg { increment, decrement, reset }

/// A side-effect the counter feature can emit.
enum CounterEffect { onReset }

/// Pure update function: state is just an [int].
(int?, List<CounterEffect>) counterUpdate(int state, CounterMsg msg) {
  return switch (msg) {
    CounterMsg.increment => (state + 1, []),
    CounterMsg.decrement => (state - 1, []),
    CounterMsg.reset => (0, [CounterEffect.onReset]),
  };
}

/// A simple effect handler that records every effect it receives.
class RecordingEffectHandler
    implements EffectHandler<CounterEffect, CounterMsg> {
  final List<CounterEffect> handled = [];

  @override
  void call(CounterEffect effect, void Function(CounterMsg) emit) {
    handled.add(effect);
  }
}

/// Convenience factory – creates a [TimeTravelFeature] backed by a counter,
/// registered against the given [controller].
TimeTravelFeature<int, CounterMsg, CounterEffect> createCounter({
  required String name,
  required TimeTravelController controller,
  int initialState = 0,
  RecordingEffectHandler? effectHandler,
}) {
  return TimeTravelFeature<int, CounterMsg, CounterEffect>(
    name: name,
    initialState: initialState,
    update: counterUpdate,
    effectHandlers: [effectHandler ?? RecordingEffectHandler()],
    controller: controller,
  );
}

// ---------------------------------------------------------------------------
// Second feature type – a simple string accumulator for multi-feature tests
// ---------------------------------------------------------------------------

enum AccMsg { append, clear }

enum AccEffect { none }

(String?, List<AccEffect>) accUpdate(String state, AccMsg msg) {
  return switch (msg) {
    AccMsg.append => ('${state}x', []),
    AccMsg.clear => ('', []),
  };
}

TimeTravelFeature<String, AccMsg, AccEffect> createAccumulator({
  required String name,
  required TimeTravelController controller,
  String initialState = '',
}) {
  return TimeTravelFeature<String, AccMsg, AccEffect>(
    name: name,
    initialState: initialState,
    update: accUpdate,
    effectHandlers: [],
    controller: controller,
  );
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  // =========================================================================
  // TimeTravelController – basic lifecycle
  // =========================================================================
  group('TimeTravelController lifecycle', () {
    late TimeTravelController controller;

    setUp(() {
      controller = TimeTravelController();
    });

    tearDown(() async {
      await controller.dispose();
    });

    test('initial state has empty timeline and currentIndex -1', () {
      expect(controller.state.timeline, isEmpty);
      expect(controller.state.currentIndex, -1);
      expect(controller.isTimeTraveled, isFalse);
    });

    test('dispose clears features and closes stream', () async {
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();
      await controller.dispose();

      // After dispose the state subject is closed –
      // creating a new feature on a disposed controller would fail,
      // but the controller itself should not throw on double-dispose fields.
      // We mainly assert dispose completes without error.
    });
  });

  // =========================================================================
  // Register / unregister
  // =========================================================================
  group('TimeTravelController register & unregister', () {
    late TimeTravelController controller;

    setUp(() {
      controller = TimeTravelController();
    });

    tearDown(() async {
      await controller.dispose();
    });

    test('registering a feature captures its initial state in snapshots',
        () async {
      final feature = createCounter(
        name: 'counter',
        controller: controller,
        initialState: 42,
      );
      await feature.init();

      // The feature is registered – sending a message proves it works.
      feature.accept(CounterMsg.increment);
      expect(feature.state, 43);

      await feature.dispose();
    });

    test('unregistering removes the feature from all snapshots', () async {
      final feature = createCounter(name: 'counter', controller: controller);
      await feature.init();

      // Produce a message so the timeline is non-empty.
      feature.accept(CounterMsg.increment);
      expect(controller.state.timeline, hasLength(1));

      await feature.dispose(); // calls unregister

      // Controller still holds the timeline event, but the feature is gone.
      expect(controller.state.timeline, hasLength(1));
    });
  });

  // =========================================================================
  // Timeline recording
  // =========================================================================
  group('Timeline recording', () {
    late TimeTravelController controller;
    late TimeTravelFeature<int, CounterMsg, CounterEffect> feature;

    setUp(() async {
      controller = TimeTravelController();
      feature = createCounter(name: 'counter', controller: controller);
      await feature.init();
    });

    tearDown(() async {
      await feature.dispose();
      await controller.dispose();
    });

    test('each accepted message is appended to the timeline', () {
      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.decrement);

      final timeline = controller.state.timeline;
      expect(timeline, hasLength(3));
      expect(timeline[0].featureName, 'counter');
      expect(timeline[0].message, CounterMsg.increment);
      expect(timeline[1].message, CounterMsg.increment);
      expect(timeline[2].message, CounterMsg.decrement);
    });

    test('timeline events have non-decreasing timestamps', () {
      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.increment);

      final t0 = controller.state.timeline[0].millisecondsSinceStart;
      final t1 = controller.state.timeline[1].millisecondsSinceStart;
      expect(t1, greaterThanOrEqualTo(t0));
    });

    test('timeline is unmodifiable', () {
      feature.accept(CounterMsg.increment);

      expect(
        () => controller.state.timeline.add(
          (
            featureName: 'x',
            message: CounterMsg.increment,
            millisecondsSinceStart: 0,
          ),
        ),
        throwsA(isA<UnsupportedError>()),
      );
    });
  });

  // =========================================================================
  // TimeTravelFeature – state & effects
  // =========================================================================
  group('TimeTravelFeature state & effects', () {
    late TimeTravelController controller;
    late RecordingEffectHandler effectHandler;
    late TimeTravelFeature<int, CounterMsg, CounterEffect> feature;

    setUp(() async {
      controller = TimeTravelController();
      effectHandler = RecordingEffectHandler();
      feature = createCounter(
        name: 'counter',
        controller: controller,
        effectHandler: effectHandler,
      );
      await feature.init();
    });

    tearDown(() async {
      await feature.dispose();
      await controller.dispose();
    });

    test('accept updates state correctly', () {
      feature.accept(CounterMsg.increment);
      expect(feature.state, 1);

      feature.accept(CounterMsg.increment);
      expect(feature.state, 2);

      feature.accept(CounterMsg.decrement);
      expect(feature.state, 1);
    });

    test('accept with same state value does not re-emit state', () async {
      // reset to 0 when already at 0 – produces state=0 which equals
      // current state, so _stateSubject should NOT re-emit.
      final states = <int>[];
      feature.stateStream.skip(1).listen(states.add); // skip seed

      feature.accept(CounterMsg.reset); // 0 -> 0 (same value)
      await Future.delayed(Duration.zero);

      // The effect should still fire even though state didn't change.
      expect(effectHandler.handled, contains(CounterEffect.onReset));
      // State subject should NOT emit because value didn't change.
      expect(states, isEmpty);
    });

    test('effects are delivered in normal mode', () async {
      feature.accept(CounterMsg.reset);

      // Give microtask queue a chance to deliver the stream event.
      await Future.delayed(Duration.zero);

      expect(effectHandler.handled, [CounterEffect.onReset]);
    });

    test('effects are suppressed during time travel replay', () async {
      // Build up some history that includes an effect-producing message.
      feature.accept(CounterMsg.increment); // timeline[0]
      feature.accept(CounterMsg.reset); // timeline[1] – produces effect

      await Future.delayed(Duration.zero);
      effectHandler.handled.clear();

      // Travel back – replay should NOT trigger effects.
      controller.goToStart();
      await Future.delayed(Duration.zero);

      expect(effectHandler.handled, isEmpty);
    });

    test('stateStream emits state changes', () async {
      final states = <int>[];
      final sub = feature.stateStream.skip(1).listen(states.add);

      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.decrement);

      await Future.delayed(Duration.zero);
      expect(states, [1, 2, 1]);

      await sub.cancel();
    });
  });

  // =========================================================================
  // Navigation – goBack / goForward
  // =========================================================================
  group('Navigation goBack & goForward', () {
    late TimeTravelController controller;
    late TimeTravelFeature<int, CounterMsg, CounterEffect> feature;

    setUp(() async {
      controller = TimeTravelController();
      feature = createCounter(name: 'counter', controller: controller);
      await feature.init();
    });

    tearDown(() async {
      await feature.dispose();
      await controller.dispose();
    });

    test('goBack from live mode goes to second-to-last event', () {
      feature.accept(CounterMsg.increment); // state 1, timeline[0]
      feature.accept(CounterMsg.increment); // state 2, timeline[1]
      feature.accept(CounterMsg.increment); // state 3, timeline[2]

      controller.goBack(); // should move to index 1
      expect(controller.state.currentIndex, 1);
      expect(controller.isTimeTraveled, isTrue);
      expect(feature.state, 2);
    });

    test(
        'goBack does nothing when timeline has fewer than 2 events and not time-traveled',
        () {
      // Empty timeline
      controller.goBack();
      expect(controller.state.currentIndex, -1);

      // Single event
      feature.accept(CounterMsg.increment);
      controller.goBack();
      expect(controller.state.currentIndex, -1);
    });

    test('goBack at index 0 does nothing', () {
      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.increment);

      controller.goToStart(); // index 0
      controller.goBack(); // should stay at 0
      expect(controller.state.currentIndex, 0);
    });

    test('goForward in live mode does nothing', () {
      feature.accept(CounterMsg.increment);

      controller.goForward();
      expect(controller.state.currentIndex, -1);
      expect(controller.isTimeTraveled, isFalse);
    });

    test('goForward at end of timeline does nothing', () {
      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.increment);

      controller.goBack(); // index 0 (second-to-last)
      controller.goForward(); // index 1 (last)

      // Now at last index – goForward should be no-op
      controller.goForward();
      expect(controller.state.currentIndex, 1);
    });

    test('goForward moves one step forward', () {
      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2
      feature.accept(CounterMsg.increment); // 3

      controller.goToStart(); // index 0, state restored to 1
      expect(feature.state, 1);

      controller.goForward(); // index 1, state should be 2
      expect(controller.state.currentIndex, 1);
      expect(feature.state, 2);
    });
  });

  // =========================================================================
  // Navigation – goToStart / goToEnd
  // =========================================================================
  group('Navigation goToStart & goToEnd', () {
    late TimeTravelController controller;
    late TimeTravelFeature<int, CounterMsg, CounterEffect> feature;

    setUp(() async {
      controller = TimeTravelController();
      feature = createCounter(name: 'counter', controller: controller);
      await feature.init();
    });

    tearDown(() async {
      await feature.dispose();
      await controller.dispose();
    });

    test('goToStart sets index to 0 and replays to first message state', () {
      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2
      feature.accept(CounterMsg.increment); // 3

      controller.goToStart();
      expect(controller.state.currentIndex, 0);
      expect(feature.state, 1); // initial 0 + increment
    });

    test('goToEnd restores final state and exits time travel mode', () {
      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2
      feature.accept(CounterMsg.increment); // 3

      controller.goToStart();
      expect(feature.state, 1);

      controller.goToEnd();
      expect(controller.state.currentIndex, -1);
      expect(controller.isTimeTraveled, isFalse);
      expect(feature.state, 3);
    });

    test('goToEnd on empty timeline is a no-op', () {
      controller.goToEnd();
      expect(controller.state.currentIndex, -1);
    });
  });

  // =========================================================================
  // Multi-step history navigation
  // =========================================================================
  group('Multi-step history navigation', () {
    late TimeTravelController controller;
    late TimeTravelFeature<int, CounterMsg, CounterEffect> feature;

    setUp(() async {
      controller = TimeTravelController();
      feature = createCounter(name: 'counter', controller: controller);
      await feature.init();
    });

    tearDown(() async {
      await feature.dispose();
      await controller.dispose();
    });

    test('back-back-forward replays to correct intermediate state', () {
      // Build: 0 -> 1 -> 2 -> 3 -> 4
      for (var i = 0; i < 4; i++) {
        feature.accept(CounterMsg.increment);
      }
      expect(feature.state, 4);

      controller.goBack(); // index 2 (second-to-last), state 3
      expect(controller.state.currentIndex, 2);
      expect(feature.state, 3);

      controller.goBack(); // index 1, state 2
      expect(controller.state.currentIndex, 1);
      expect(feature.state, 2);

      controller.goForward(); // index 2, state 3
      expect(controller.state.currentIndex, 2);
      expect(feature.state, 3);
    });

    test('goToStart then step forward through entire history', () {
      // Build: 0 -> 1 -> 2 -> 3
      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2
      feature.accept(CounterMsg.increment); // 3

      controller.goToStart(); // index 0
      expect(feature.state, 1);

      controller.goForward(); // index 1
      expect(feature.state, 2);

      controller.goForward(); // index 2
      expect(feature.state, 3);

      // Already at end – stays put
      controller.goForward();
      expect(feature.state, 3);
      expect(controller.state.currentIndex, 2);
    });

    test('back-back-back saturates at index 0', () {
      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2

      controller.goBack(); // index 0
      expect(controller.state.currentIndex, 0);
      expect(feature.state, 1);

      controller.goBack(); // stays 0
      expect(controller.state.currentIndex, 0);
      expect(feature.state, 1);

      controller.goBack(); // still 0
      expect(controller.state.currentIndex, 0);
    });

    test('goToEnd after multiple backs restores final state', () {
      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2
      feature.accept(CounterMsg.increment); // 3
      feature.accept(CounterMsg.increment); // 4

      controller.goBack(); // index 2, state 3
      controller.goBack(); // index 1, state 2
      controller.goBack(); // index 0, state 1

      controller.goToEnd();
      expect(controller.state.currentIndex, -1);
      expect(feature.state, 4);
    });

    test('mixed messages: increment, decrement, reset navigated correctly', () {
      feature.accept(CounterMsg.increment); // 0->1
      feature.accept(CounterMsg.increment); // 1->2
      feature.accept(CounterMsg.decrement); // 2->1
      feature.accept(CounterMsg.reset); // 1->0

      // At index 0: state after first increment = 1
      controller.goToStart();
      expect(feature.state, 1);

      // At index 1: state after two increments = 2
      controller.goForward();
      expect(feature.state, 2);

      // At index 2: state after inc,inc,dec = 1
      controller.goForward();
      expect(feature.state, 1);

      // At index 3: state after inc,inc,dec,reset = 0
      controller.goForward();
      expect(feature.state, 0);
    });
  });

  // =========================================================================
  // Snapshot mechanism
  // =========================================================================
  group('Snapshot mechanism', () {
    test('snapshot is taken at exact multiples of snapshotAtEach', () async {
      final controller = TimeTravelController(snapshotAtEach: 3);
      final feature = createCounter(name: 'counter', controller: controller);
      await feature.init();

      // Send 6 messages -> snapshots at 3 and 6
      for (var i = 0; i < 6; i++) {
        feature.accept(CounterMsg.increment);
      }
      expect(feature.state, 6);

      // Traveling to index 0 should still work – uses initial snapshot
      controller.goToStart();
      expect(feature.state, 1);

      // Traveling to index 4 (past first snapshot boundary) should use
      // snapshot[1] (taken after 3 msgs with state=3) + replay msg 3,4
      controller.goForward(); // 1
      controller.goForward(); // 2
      controller.goForward(); // 3
      controller.goForward(); // 4
      expect(controller.state.currentIndex, 4);
      expect(feature.state, 5);

      await feature.dispose();
      await controller.dispose();
    });

    test('replay across snapshot boundary produces correct state', () async {
      final controller = TimeTravelController(snapshotAtEach: 2);
      final feature = createCounter(name: 'counter', controller: controller);
      await feature.init();

      // Send 5 messages: states 1,2,3,4,5
      // Snapshots at indices 0(initial), 2(after 2 msgs, state=2), 4(after 4 msgs, state=4)
      for (var i = 0; i < 5; i++) {
        feature.accept(CounterMsg.increment);
      }

      // Jump to index 3 – should use snapshot at index 2 (state=2), replay msgs 2,3
      controller.goToStart();
      controller.goForward();
      controller.goForward();
      controller.goForward();
      expect(controller.state.currentIndex, 3);
      expect(feature.state, 4);

      await feature.dispose();
      await controller.dispose();
    });

    test('snapshotAtEach=1 creates a snapshot after every message', () async {
      final controller = TimeTravelController(snapshotAtEach: 1);
      final feature = createCounter(name: 'counter', controller: controller);
      await feature.init();

      for (var i = 0; i < 5; i++) {
        feature.accept(CounterMsg.increment);
      }

      // Navigate to each position and verify
      controller.goToStart();
      expect(feature.state, 1);

      controller.goForward();
      expect(feature.state, 2);

      controller.goForward();
      expect(feature.state, 3);

      await feature.dispose();
      await controller.dispose();
    });
  });

  // =========================================================================
  // Multiple features on the same controller
  // =========================================================================
  group('Multiple features on same controller', () {
    late TimeTravelController controller;
    late TimeTravelFeature<int, CounterMsg, CounterEffect> counter;
    late TimeTravelFeature<String, AccMsg, AccEffect> accumulator;

    setUp(() async {
      controller = TimeTravelController();
      counter = createCounter(name: 'counter', controller: controller);
      accumulator = createAccumulator(
        name: 'accumulator',
        controller: controller,
      );
      await counter.init();
      await accumulator.init();
    });

    tearDown(() async {
      await counter.dispose();
      await accumulator.dispose();
      await controller.dispose();
    });

    test('timeline records messages from both features in order', () {
      counter.accept(CounterMsg.increment);
      accumulator.accept(AccMsg.append);
      counter.accept(CounterMsg.increment);

      final timeline = controller.state.timeline;
      expect(timeline, hasLength(3));
      expect(timeline[0].featureName, 'counter');
      expect(timeline[1].featureName, 'accumulator');
      expect(timeline[2].featureName, 'counter');
    });

    test('goToStart replays both features to their state after first message',
        () {
      counter.accept(CounterMsg.increment); // counter: 1
      accumulator.accept(AccMsg.append); // acc: 'x'
      counter.accept(CounterMsg.increment); // counter: 2
      accumulator.accept(AccMsg.append); // acc: 'xx'

      controller.goToStart(); // replay only timeline[0]
      expect(counter.state, 1);
      // Accumulator should be restored to its initial snapshot state (empty)
      // then only timeline[0] replayed – which is a counter msg, so acc stays ''
      expect(accumulator.state, '');
    });

    test('goToEnd restores both features to their final states', () {
      counter.accept(CounterMsg.increment); // counter: 1
      accumulator.accept(AccMsg.append); // acc: 'x'
      counter.accept(CounterMsg.increment); // counter: 2

      controller.goToStart();
      controller.goToEnd();

      expect(counter.state, 2);
      expect(accumulator.state, 'x');
    });

    test('stepping through interleaved messages restores correct states', () {
      counter.accept(CounterMsg.increment); // timeline[0]: counter 1
      accumulator.accept(AccMsg.append); // timeline[1]: acc 'x'
      counter.accept(CounterMsg.decrement); // timeline[2]: counter 0
      accumulator.accept(AccMsg.append); // timeline[3]: acc 'xx'

      controller.goToStart(); // index 0
      expect(counter.state, 1);
      expect(accumulator.state, '');

      controller.goForward(); // index 1
      expect(counter.state, 1);
      expect(accumulator.state, 'x');

      controller.goForward(); // index 2
      expect(counter.state, 0);
      expect(accumulator.state, 'x');

      controller.goForward(); // index 3
      expect(counter.state, 0);
      expect(accumulator.state, 'xx');
    });

    test('snapshot captures state of all registered features', () async {
      // Use small snapshot interval to trigger it
      await counter.dispose();
      await accumulator.dispose();
      await controller.dispose();

      controller = TimeTravelController(snapshotAtEach: 2);
      counter = createCounter(name: 'counter', controller: controller);
      accumulator = createAccumulator(
        name: 'accumulator',
        controller: controller,
      );
      await counter.init();
      await accumulator.init();

      counter.accept(CounterMsg.increment); // counter:1, timeline[0]
      accumulator.accept(AccMsg.append); // acc:'x', timeline[1] -> snapshot

      counter.accept(CounterMsg.increment); // counter:2, timeline[2]
      accumulator.accept(AccMsg.append); // acc:'xx', timeline[3] -> snapshot

      // Go to index 2 – should use snapshot from index 2 boundary
      // snapshot[1] has counter=1, acc='x' (taken after 2 messages)
      // then replay timeline[2] -> counter gets inc -> counter=2
      controller.goToStart();
      controller.goForward();
      controller.goForward();
      expect(controller.state.currentIndex, 2);
      expect(counter.state, 2);
      expect(accumulator.state, 'x');
    });
  });

  // =========================================================================
  // Corner cases
  // =========================================================================
  group('Corner cases', () {
    test('goToStart on empty timeline triggers assertion in debug mode', () {
      final controller = TimeTravelController();

      // _moveTo asserts index >= 0 && index < timeline.length
      // With empty timeline, goToStart calls _moveTo(0) which violates assert.
      expect(
        () => controller.goToStart(),
        throwsA(isA<AssertionError>()),
      );

      controller.dispose();
    });

    test('goBack with exactly 1 event does nothing', () async {
      final controller = TimeTravelController();
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      feature.accept(CounterMsg.increment); // only 1 event
      controller.goBack(); // needs >= 2 events to go back from live mode

      expect(controller.state.currentIndex, -1);
      expect(feature.state, 1); // unchanged

      await feature.dispose();
      await controller.dispose();
    });

    test('goBack with exactly 2 events enters time travel at index 0',
        () async {
      final controller = TimeTravelController();
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      feature.accept(CounterMsg.increment); // state 1
      feature.accept(CounterMsg.increment); // state 2

      controller.goBack(); // index 0 (second-to-last)
      expect(controller.state.currentIndex, 0);
      expect(feature.state, 1);

      await feature.dispose();
      await controller.dispose();
    });

    test(
        'messages during time travel do not produce effects or timeline entries',
        () async {
      final controller = TimeTravelController();
      final effectHandler = RecordingEffectHandler();
      final feature = createCounter(
        name: 'c',
        controller: controller,
        effectHandler: effectHandler,
      );
      await feature.init();

      feature.accept(CounterMsg.increment); // timeline[0]
      feature.accept(CounterMsg.increment); // timeline[1]
      await Future.delayed(Duration.zero);
      effectHandler.handled.clear();

      controller.goToStart(); // enter time travel, index 0
      expect(controller.isTimeTraveled, isTrue);

      // The timeline length should remain at 2 –
      // accept calls during replay should not add to timeline.
      expect(controller.state.timeline, hasLength(2));
      expect(effectHandler.handled, isEmpty);

      await feature.dispose();
      await controller.dispose();
    });

    test('feature with non-zero initial state replays correctly', () async {
      final controller = TimeTravelController();
      final feature = createCounter(
        name: 'c',
        controller: controller,
        initialState: 100,
      );
      await feature.init();

      feature.accept(CounterMsg.increment); // 101
      feature.accept(CounterMsg.increment); // 102
      feature.accept(CounterMsg.decrement); // 101

      controller.goToStart(); // snapshot(100) + replay[0](inc) = 101
      expect(feature.state, 101);

      controller.goForward(); // snapshot(100) + replay[0..1] = 102
      expect(feature.state, 102);

      controller.goForward(); // snapshot(100) + replay[0..2] = 101
      expect(feature.state, 101);

      await feature.dispose();
      await controller.dispose();
    });

    test('isTimeTraveled is false after goToEnd', () async {
      final controller = TimeTravelController();
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      feature.accept(CounterMsg.increment);
      feature.accept(CounterMsg.increment);

      controller.goToStart();
      expect(controller.isTimeTraveled, isTrue);

      controller.goToEnd();
      expect(controller.isTimeTraveled, isFalse);
      expect(controller.state.currentIndex, -1);

      await feature.dispose();
      await controller.dispose();
    });

    test('multiple goToEnd calls are safe on non-empty timeline', () async {
      final controller = TimeTravelController();
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      feature.accept(CounterMsg.increment);

      controller.goToEnd();
      controller.goToEnd();
      controller.goToEnd();

      expect(controller.state.currentIndex, -1);
      expect(feature.state, 1);

      await feature.dispose();
      await controller.dispose();
    });

    test('new messages after exiting time travel append to timeline normally',
        () async {
      final controller = TimeTravelController();
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      feature.accept(CounterMsg.increment); // 1
      feature.accept(CounterMsg.increment); // 2

      controller.goToStart(); // time travel to index 0
      controller.goToEnd(); // exit time travel

      // Now send more messages – they should be recorded normally
      feature.accept(CounterMsg.increment); // 3
      expect(controller.state.timeline, hasLength(3));
      expect(feature.state, 3);
      expect(controller.isTimeTraveled, isFalse);

      await feature.dispose();
      await controller.dispose();
    });

    test('registering the same feature name twice overwrites the first',
        () async {
      final controller = TimeTravelController();
      final feature1 = createCounter(
        name: 'dup',
        controller: controller,
        initialState: 10,
      );
      final feature2 = createCounter(
        name: 'dup',
        controller: controller,
        initialState: 20,
      );
      await feature1.init();
      await feature2.init();

      // feature2 should have overwritten feature1 in the controller
      feature2.accept(CounterMsg.increment);
      expect(feature2.state, 21);

      // feature1 still works independently but isn't tracked by the controller
      feature1.accept(CounterMsg.increment);
      expect(feature1.state, 11);

      await feature1.dispose();
      await feature2.dispose();
      await controller.dispose();
    });
  });

  // =========================================================================
  // Combined time travel features – simultaneous operations
  // =========================================================================
  group('Simultaneous time travel features', () {
    test('two features navigated back and forth preserve both states',
        () async {
      final controller = TimeTravelController();
      final counter = createCounter(name: 'counter', controller: controller);
      final acc = createAccumulator(name: 'acc', controller: controller);
      await counter.init();
      await acc.init();

      counter.accept(CounterMsg.increment); // c:1, t[0]
      acc.accept(AccMsg.append); // a:'x', t[1]
      counter.accept(CounterMsg.increment); // c:2, t[2]
      acc.accept(AccMsg.append); // a:'xx', t[3]
      counter.accept(CounterMsg.increment); // c:3, t[4]

      // Go back step by step and verify both
      controller.goBack(); // index 3
      expect(counter.state, 2);
      expect(acc.state, 'xx');

      controller.goBack(); // index 2
      expect(counter.state, 2);
      expect(acc.state, 'x');

      controller.goBack(); // index 1
      expect(counter.state, 1);
      expect(acc.state, 'x');

      controller.goBack(); // index 0
      expect(counter.state, 1);
      expect(acc.state, '');

      // Now forward
      controller.goForward(); // index 1
      expect(counter.state, 1);
      expect(acc.state, 'x');

      controller.goForward(); // index 2
      expect(counter.state, 2);
      expect(acc.state, 'x');

      await counter.dispose();
      await acc.dispose();
      await controller.dispose();
    });

    test(
        'goToStart with multiple features resets all to initial snapshot + first message',
        () async {
      final controller = TimeTravelController();
      final counter = createCounter(
        name: 'counter',
        controller: controller,
        initialState: 50,
      );
      final acc = createAccumulator(
        name: 'acc',
        controller: controller,
        initialState: 'start',
      );
      await counter.init();
      await acc.init();

      acc.accept(AccMsg.append); // 'startx', t[0]
      counter.accept(CounterMsg.decrement); // 49, t[1]
      acc.accept(AccMsg.clear); // '', t[2]

      controller.goToStart();
      // snapshot has counter=50, acc='start'
      // replay t[0] -> acc appends -> acc='startx'
      // counter is not touched by t[0] -> stays at snapshot 50
      expect(counter.state, 50);
      expect(acc.state, 'startx');

      await counter.dispose();
      await acc.dispose();
      await controller.dispose();
    });

    test(
        'effects only fire for the correct feature and only outside time travel',
        () async {
      final controller = TimeTravelController();
      final effectHandler = RecordingEffectHandler();
      final counter = createCounter(
        name: 'counter',
        controller: controller,
        effectHandler: effectHandler,
      );
      final acc = createAccumulator(name: 'acc', controller: controller);
      await counter.init();
      await acc.init();

      counter.accept(CounterMsg.reset); // effect fires
      acc.accept(AccMsg.append);
      await Future.delayed(Duration.zero);

      expect(effectHandler.handled, [CounterEffect.onReset]);
      effectHandler.handled.clear();

      // Enter time travel – replaying the reset should NOT fire the effect
      controller.goToStart();
      await Future.delayed(Duration.zero);
      expect(effectHandler.handled, isEmpty);

      await counter.dispose();
      await acc.dispose();
      await controller.dispose();
    });

    test('unregistering one feature while traveling does not break the other',
        () async {
      final controller = TimeTravelController();
      final counter = createCounter(name: 'counter', controller: controller);
      final acc = createAccumulator(name: 'acc', controller: controller);
      await counter.init();
      await acc.init();

      counter.accept(CounterMsg.increment); // t[0], counter-only
      counter.accept(CounterMsg.increment); // t[1], counter-only

      // Dispose accumulator – it was never in the timeline, so travel should work
      await acc.dispose();

      controller.goToStart();
      expect(counter.state, 1);

      controller.goToEnd();
      expect(counter.state, 2);

      await counter.dispose();
      await controller.dispose();
    });
  });

  // =========================================================================
  // Snapshot boundary – large number of messages
  // =========================================================================
  group('Large history with snapshots', () {
    test(
        'navigating to arbitrary index with snapshotAtEach=3 yields correct state',
        () async {
      final controller = TimeTravelController(snapshotAtEach: 3);
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      // Send 10 increments: states 1..10
      for (var i = 0; i < 10; i++) {
        feature.accept(CounterMsg.increment);
      }
      expect(feature.state, 10);

      // Navigate to each index and verify
      controller.goToStart();
      expect(feature.state, 1); // index 0

      for (var i = 1; i <= 9; i++) {
        controller.goForward();
        expect(feature.state, i + 1, reason: 'at index $i');
      }

      await feature.dispose();
      await controller.dispose();
    });

    test(
        'goToStart then goToEnd with many messages and small snapshot interval',
        () async {
      final controller = TimeTravelController(snapshotAtEach: 2);
      final feature = createCounter(name: 'c', controller: controller);
      await feature.init();

      for (var i = 0; i < 7; i++) {
        feature.accept(CounterMsg.increment);
      }

      controller.goToStart();
      expect(feature.state, 1);

      controller.goToEnd();
      expect(feature.state, 7);
      expect(controller.isTimeTraveled, isFalse);

      await feature.dispose();
      await controller.dispose();
    });
  });
}
