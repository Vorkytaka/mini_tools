part of 'feature.dart';

/// A function type for emitting events.
///
/// This type is used to trigger events, typically in effect handlers.
typedef EventEmitter<Event> = void Function(Event event);

/// A function type for handling effects.
///
/// This function is responsible for executing side effects that might result
/// from event processing. It can emit new events based on the completion of the effect.
///
/// [emit] can be used to send any count of events to the feature.
typedef EffectHandler<Effect, Event> = FutureOr<void> Function(
  Effect effect,
  EventEmitter<Event> emit,
);