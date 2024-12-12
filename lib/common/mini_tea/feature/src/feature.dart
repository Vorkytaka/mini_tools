import 'dart:async';

import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'disposable.dart';

part 'effect_handler.dart';

part 'feature_effect_wrapper.dart';

part 'feature_impl.dart';

part 'feature_observer.dart';

part 'next.dart';

part 'proxy_feature.dart';

part 'update.dart';

/// An interface for building features.
/// Inspired by The Elm Architecture.
///
/// This interface defines the core components required for a feature:
/// - [State] represents the current state of the feature.
/// - [Msg] represents actions or occurrences that can change the state.
/// - [Effect] represents side effects triggered by messages
///   that do not directly modify state.
///
/// Because of so many generics, this interface and everything around it is not very user friendly as is.
/// The best way is to define a set of aliases and helper functions, for example:
/// ```dart
/// typedef JsonFeature = Feature<JsonState, JsonMsg, JsonEffect, void>;
///
/// JsonFeature jsonFeatureFactory() => JsonFeature(
///       initialState: const JsonState.init(),
///       update: _jsonUpdate,
///       effectHandlers: [_jsonEffectHandler],
///       initialEffect: const [],
///     );
/// ```
@experimental
abstract interface class Feature<State, Msg, Effect> implements Disposable {
  /// Creates a new `Feature` instance.
  ///
  /// - [initialState]: The starting state of the feature. This is a required
  ///   parameter, defining the initial conditions of the feature.
  ///
  /// - [update]: A function or class that takes the current state, a message and an effect. It defines the logic for state transitions
  ///   in response to the messages. Must be a pure function.
  ///
  /// - [effectHandlers]: A list of handlers for processing side effects. Each
  ///   `EffectHandler` is responsible for handling specific effects and
  ///   potentially generating new messages to influence state changes.
  ///
  /// - [initialEffect]: An optional list of effects to be executed initially
  ///   when the feature is instantiated. Defaults to an empty list if not
  ///   specified.
  factory Feature({
    required State initialState,
    required Update<State, Msg, Effect> update,
    List<EffectHandler<Effect, Msg>> effectHandlers = const [],
    List<Effect> initialEffects = const [],
    List<Effect> disposableEffects = const [],
  }) =>
      _FeatureImpl(
        initialState: initialState,
        update: update,
        effectHandlers: effectHandlers,
        initialEffects: initialEffects,
        disposableEffects: disposableEffects,
      );

  List<Effect> get initialEffects;

  List<Effect> get disposableEffects;

  /// A stream that provides updates to the state.
  ///
  /// Consumers can listen to this stream to react to state changes
  /// and update their UI accordingly.
  Stream<State> get stateStream;

  /// The current state of the feature.
  ///
  /// This provides a snapshot of the model's state at any given time.
  State get state;

  // A stream representing side effects.
  ///
  /// Side effects are operations like making HTTP requests or writing to
  /// persistent storage. They do not affect the state directly.
  Stream<Effect> get effects;

  // Accepts a message to be processed by the feature.
  ///
  /// This method is called whenever an message occurs that should be handled by
  /// the feature's update logic.
  void accept(Msg message);

  /// Initializes the feature and prepares it for usage.
  ///
  /// This might include operations like setting up resources or subscriptions.
  /// It returns a FutureOr, indicating that the operation might be asynchronous.
  FutureOr<void> init();

  /// Cleans up the feature, releasing any resources.
  ///
  /// Called when the feature is no longer used or the application is disposing
  /// the feature. It may perform asynchronous clean-up operations.
  @override
  Future<void> dispose();
}
