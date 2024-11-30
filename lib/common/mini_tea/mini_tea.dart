import 'dart:async';

import 'package:rxdart/rxdart.dart';

part 'feature_impl.dart';

/// An interface for building features.
/// Inspired by The Elm Architecture.
///
/// This interface defines the core components required for a feature:
/// - [State] represents the current state of the feature.
/// - [Event] represents actions or occurrences that can change the state.
/// - [Effect] represents side effects triggered by events that do not directly modify state.
/// - [News] represents one-time messages,
///
/// Because of so many generics, this interface and everything around it is not very user friendly as is.
/// The best way is to define a set of aliases and helper functions, for example:
/// ```dart
/// typedef JsonFeature = Feature<JsonState, JsonEvent, JsonEffect, void>;
///
/// JsonFeature jsonFeatureFactory() => JsonFeature(
///       initialState: const JsonState.init(),
///       update: _jsonUpdate,
///       effectHandlers: [_jsonEffectHandler],
///       initialEffect: const [],
///     );
/// ```
abstract interface class Feature<State, Event, Effect, News> {
  factory Feature({
    required State initialState,
    required Update<State, Event, Effect, News> update,
    required List<EffectHandler<Effect, Event>> effectHandlers,
    List<Effect> initialEffect = const [],
  }) =>
      _FeatureImpl(
        initialState: initialState,
        update: update,
        effectHandlers: effectHandlers,
        initialEffect: initialEffect,
      );

  /// A stream that provides updates to the state.
  ///
  /// Consumers can listen to this stream to react to state changes
  /// and update their UI accordingly.
  Stream<State> get stateStream;

  /// The current state of the feature.
  ///
  /// This provides a snapshot of the model's state at any given time.
  State get state;

  /// A stream of news items for one-time messages.
  ///
  /// These messages are typically used to inform the UI about events such as
  /// navigation actions or displaying dialogs, without affecting the state.
  Stream<News> get news;

  // A stream representing side effects.
  ///
  /// Side effects are operations like making HTTP requests or writing to
  /// persistent storage. They do not affect the state directly.
  Stream<Effect> get effects;

  // Accepts an event to be processed by the feature.
  ///
  /// This method is called whenever an event occurs that should be handled by
  /// the feature's update logic.
  void accept(Event event);

  /// Initializes the feature and prepares it for usage.
  ///
  /// This might include operations like setting up resources or subscriptions.
  /// It returns a FutureOr, indicating that the operation might be asynchronous.
  FutureOr<void> init();

  /// Cleans up the feature, releasing any resources.
  ///
  /// Called when the feature is no longer used or the application is disposing
  /// the feature. It may perform asynchronous clean-up operations.
  FutureOr<void> dispose();
}

/// A type representing the result of handling an event with update, including:
/// - [State]: The next state to transition to, or null to indicate no state change.
/// - [List<Effect>]: A list of side effects to be processed.
/// - [List<News>]: A list of news messages to be sent.
typedef Next<State, Effect, News> = (State?, List<Effect>, List<News>);

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
