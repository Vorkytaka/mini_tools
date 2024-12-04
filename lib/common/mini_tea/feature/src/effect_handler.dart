part of 'feature.dart';

/// A function type for emitting events.
///
/// This type is used to trigger events, typically in effect handlers.
typedef EventEmitter<Event> = void Function(Event event);

// ignore: one_member_abstracts
abstract interface class IEventEmitter<Event> {
  void call(Event event);
}

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

/// An interface that can be used as interface for class-based [EffectHandler].
///
/// Objects of classes that implements this interface can be used as [EffectHandler].
//
// ignore: one_member_abstracts
abstract interface class IEffectHandler<Effect, Event> {
  FutureOr<void> call(Effect effect, EventEmitter<Event> emit);
}

final class EffectHandlerWrapper<State, Event, Effect, News, E extends Effect>
    implements Feature<State, Event, Effect, News> {
  final Feature<State, Event, Effect, News> feature;
  final EffectHandler<E, Event> handler;

  StreamSubscription? _subscription;

  EffectHandlerWrapper({
    required this.feature,
    required this.handler,
  });

  @override
  FutureOr<void> init() {
    _subscription = effects
        .whereType<E>()
        .cast<E>()
        .listen((effect) => handler(effect, accept));
    return feature.init();
  }

  @override
  FutureOr<void> dispose() {
    _subscription?.cancel();
    return feature.dispose();
  }

  @override
  void accept(Event event) => feature.accept(event);

  @override
  Stream<Effect> get effects => feature.effects;

  @override
  Stream<News> get news => feature.news;

  @override
  State get state => feature.state;

  @override
  Stream<State> get stateStream => feature.stateStream;
}

extension EffectHandlerWrapperUtils<State, Event, Effect, News>
    on Feature<State, Event, Effect, News> {
  Feature<State, Event, Effect, News> wrap<E extends Effect>(
    EffectHandler<E, Event> handler,
  ) =>
      EffectHandlerWrapper(
        feature: this,
        handler: handler,
      );
}
