import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract class SyncEffectHandler<Effect, Event>
    implements IEffectHandler<Effect, Event> {
  const SyncEffectHandler();

  void handle(Effect effect, EventEmitter<Event> emit);

  @override
  void call(Effect effect, EventEmitter<Event> emit) {
    handle(effect, emit);
  }
}
