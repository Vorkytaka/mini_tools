import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract class AsyncEffectHandler<Effect, Msg>
    implements IEffectHandler<Effect, Msg> {
  const AsyncEffectHandler();

  Future<void> handle(Effect effect, MsgEmitter<Msg> emit);

  @override
  Future<void> call(Effect effect, MsgEmitter<Msg> emit) async {
    return handle(effect, emit);
  }
}
