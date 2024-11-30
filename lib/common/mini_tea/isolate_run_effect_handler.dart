import 'dart:isolate';

import 'package:meta/meta.dart';

import 'mini_tea.dart';

/// Experimental effect handler, that perform specified [handler] with [Isolate.run].
@experimental
final class IsolateRunEffectHandler<Effect, Event> {
  final EffectHandler<Effect, Event> handler;

  const IsolateRunEffectHandler({
    required this.handler,
  });

  Future<void> handle(
    Effect effect,
    EventEmitter<Event> emit,
  ) =>
      Isolate.run(() => handler(effect, emit));
}
