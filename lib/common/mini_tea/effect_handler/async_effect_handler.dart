import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract class AsyncEffectHandler<Effect, Event>
    implements IEffectHandler<Effect, Event> {
  const AsyncEffectHandler();

  Future<void> handle(Effect effect, EventEmitter<Event> emit);

  @override
  Future<void> call(Effect effect, EventEmitter<Event> emit) async {
    return handle(effect, emit);
  }
}
