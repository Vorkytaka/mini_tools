part of 'feature.dart';

/// A type representing the result of handling an event with update, including:
/// - [State]: The next state to transition to, or null to indicate no state change.
/// - [List<Effect>]: A list of side effects to be processed.
typedef Next<State, Effect> = (State?, List<Effect>);

/// Helper function to send [Next].
///
/// Just some sugar, so instead of  `return (null, const []);`
/// we will have                    `return next();`
@pragma('vm:prefer-inline')
(State?, List<Effect>) next<State, Effect>({
  State? state,
  List<Effect> effects = const [],
}) =>
    (state, effects);
