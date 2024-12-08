part of 'feature.dart';

/// A function type for emitting messages.
///
/// This type is used to trigger messages, typically in effect handlers.
typedef MsgEmitter<Msg> = void Function(Msg message);

// ignore: one_member_abstracts
abstract interface class IMsgEmitter<Msg> {
  void call(Msg message);
}

/// A function type for handling effects.
///
/// This function is responsible for executing side effects that might result
/// from messages processing. It can emit new messages based on the completion of the effect.
///
/// [emit] can be used to send any count of messages to the feature.
typedef EffectHandler<Effect, Msg> = FutureOr<void> Function(
  Effect effect,
  MsgEmitter<Msg> emit,
);

/// An interface that can be used as interface for class-based [EffectHandler].
///
/// Objects of classes that implements this interface can be used as [EffectHandler].
//
// ignore: one_member_abstracts
abstract interface class IEffectHandler<Effect, Msg> {
  FutureOr<void> call(Effect effect, MsgEmitter<Msg> emit);
}
