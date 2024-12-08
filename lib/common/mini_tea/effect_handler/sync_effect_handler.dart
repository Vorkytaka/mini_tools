import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract class SyncEffectHandler<Effect, Msg>
    implements IEffectHandler<Effect, Msg> {
  const SyncEffectHandler();

  void handle(Effect effect, MsgEmitter<Msg> emit);

  @override
  void call(Effect effect, MsgEmitter<Msg> emit) {
    handle(effect, emit);
  }
}
