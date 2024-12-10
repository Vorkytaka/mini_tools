import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract base class SyncEffectHandler<Effect, Msg>
    implements EffectHandler<Effect, Msg> {
  const SyncEffectHandler();

  /// We use [Null] as return type
  /// to be sure that this method is not async.
  // ignore: prefer_void_to_null
  Null handle(Effect effect, MsgEmitter<Msg> emit);

  @override
  void call(Effect effect, MsgEmitter<Msg> emit) {
    handle(effect, emit);
  }
}
