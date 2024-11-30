import 'dart:async';

import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'effect_handler.dart';
part 'feature_impl.dart';
part 'next.dart';
part 'update.dart';

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
@experimental
abstract interface class Feature<State, Event, Effect, News> {
  /// Creates a new `Feature` instance.
  ///
  /// - [initialState]: The starting state of the feature. This is a required
  ///   parameter, defining the initial conditions of the feature.
  ///
  /// - [update]: A function or class that takes the current state, an event,
  ///   an effect, and news. It defines the logic for state transitions
  ///   in response to the events. Must be a pure function.
  ///
  /// - [effectHandlers]: A list of handlers for processing side effects. Each
  ///   `EffectHandler` is responsible for handling specific effects and
  ///   potentially generating new events to influence state changes.
  ///
  /// - [initialEffect]: An optional list of effects to be executed initially
  ///   when the feature is instantiated. Defaults to an empty list if not
  ///   specified.
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
