part of 'feature.dart';

/// A function type that updates the state based on an event.
///
/// This function takes the current state and an event as input, and returns
/// a Next object that includes the new state, a list of effects to trigger,
/// and a list of news messages.
///
/// This must be a pure function.
typedef Update<State, Event, Effect, News> = Next<State, Effect, News> Function(
  State state,
  Event event,
);

// ignore: one_member_abstracts
abstract interface class IUpdate<State, Event, Effect, News> {
  Next<State, Effect, News> call(State state, Event event);
}
