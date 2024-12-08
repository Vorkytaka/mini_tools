part of 'feature.dart';

/// A function type that updates the state based on a message.
///
/// This function takes the current state and an message as input, and returns
/// a Next object that includes the new state and a list of effects to trigger.
///
/// This must be a pure function.
typedef Update<State, Msg, Effect> = Next<State, Effect> Function(
  State state,
  Msg message,
);

// ignore: one_member_abstracts
abstract interface class IUpdate<State, Msg, Effect> {
  Next<State, Effect> call(State state, Msg message);
}
