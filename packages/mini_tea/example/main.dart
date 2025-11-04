// ignore_for_file: avoid_print

import 'package:mini_tea/feature.dart';

typedef CounterFeature = Feature<CounterState, CounterMsg, CounterEffect>;

Future<void> main() async {
  final feature = CounterFeature(
    initialState: 0,
    update: update,
    effectHandlers: [
      CounterEffectHandler(storage: MockCounterStorage()),
    ],
    initialEffects: [const LoadCounter()],
  );

  await feature.init();

  feature.stateStream.listen((state) {
    print('State: $state');
  });

  feature.accept(const Increment());
  feature.accept(const Decrement());
}

// Messages

sealed class CounterMsg {}

final class Increment implements CounterMsg {
  const Increment();
}

final class Decrement implements CounterMsg {
  const Decrement();
}

final class CounterLoaded implements CounterMsg {
  final int counter;

  const CounterLoaded(this.counter);
}

// State

typedef CounterState = int;

// Effects

sealed class CounterEffect {}

class SaveCounter implements CounterEffect {
  final int counter;

  const SaveCounter(this.counter);
}

class LoadCounter implements CounterEffect {
  const LoadCounter();
}

// Update

Next<CounterState, CounterEffect> update(
    CounterState state, CounterMsg message) {
  switch (message) {
    case Increment():
      final newState = state + 1;
      return next(
        state: newState,
        effects: [SaveCounter(newState)],
      );
    case Decrement():
      final newState = state - 1;
      return next(
        state: newState,
        effects: [SaveCounter(newState)],
      );
    case CounterLoaded():
      return next(state: message.counter);
  }
}

// Effect Handler

// In this class we handle side effects, so our logic is pure
final class CounterEffectHandler
    implements EffectHandler<CounterEffect, CounterMsg> {
  final CounterStorage _storage;

  CounterEffectHandler({
    required CounterStorage storage,
  }) : _storage = storage;

  @override
  Future<void> call(CounterEffect effect, MsgEmitter<CounterMsg> emit) async {
    switch (effect) {
      case SaveCounter():
        return _save(effect, emit);
      case LoadCounter():
        return _load(effect, emit);
    }
  }

  Future<void> _save(SaveCounter effect, MsgEmitter<CounterMsg> emit) async {
    await _storage.save(effect.counter);
  }

  Future<void> _load(LoadCounter effect, MsgEmitter<CounterMsg> emit) async {
    final value = await _storage.load();
    emit(CounterLoaded(value));
  }
}

// Storage

abstract interface class CounterStorage {
  Future<int> load();

  Future<void> save(int counter);
}

final class MockCounterStorage implements CounterStorage {
  int _counter = 0;

  @override
  Future<int> load() async {
    return _counter;
  }

  @override
  Future<void> save(int counter) async {
    _counter = counter;
  }
}
