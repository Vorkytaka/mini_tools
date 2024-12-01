import 'dart:isolate';

import 'package:meta/meta.dart';

import '../feature/feature.dart';

/// Experimental effect handler, that perform specified [handler] with [Isolate.run].
@experimental
final class IsolateRunEffectHandler<Effect, Event>
    implements IEffectHandler<Effect, Event> {
  final EffectHandler<Effect, Event> handler;

  const IsolateRunEffectHandler({
    required this.handler,
  });

  @override
  Future<void> call(
    Effect effect,
    EventEmitter<Event> emit,
  ) =>
      Isolate.run(() => handler(effect, emit));
}
