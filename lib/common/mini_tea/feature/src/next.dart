part of 'feature.dart';

/// A type representing the result of handling an event with update, including:
/// - [State]: The next state to transition to, or null to indicate no state change.
/// - [List<Effect>]: A list of side effects to be processed.
/// - [List<News>]: A list of news messages to be sent.
typedef Next<State, Effect, News> = (State?, List<Effect>, List<News>);
