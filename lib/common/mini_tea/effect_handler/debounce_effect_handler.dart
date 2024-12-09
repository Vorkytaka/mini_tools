import 'dart:async';

import 'package:meta/meta.dart';

import '../feature/feature.dart';

/// An [EffectHandler] that wraps another effect handler with a debounce mechanism.
///
/// Debouncing ensures that effect handling is postponed until a specified
/// duration has elapsed since the last invocation. This is useful for scenarios
/// where effects are triggered in quick succession, and only the most recent
/// effect needs to be processed after a delay.
@experimental
final class DebounceEffectHandler<Effect, Msg>
    implements IEffectHandler<Effect, Msg>, Disposable {
  /// The duration for which effect handling should be delayed.
  final Duration duration;

  /// The underlying effect handler that processes the effects.
  final EffectHandler<Effect, Msg> _handler;

  Timer? _timer;

  /// Creates a [DebounceEffectHandler] with the given debounce duration and effect handler.
  ///
  /// Parameters:
  /// - [duration]: The amount of time to wait before invoking the effect handler.
  /// - [handler]: The effect handler to be wrapped with debouncing logic.
  DebounceEffectHandler({
    required this.duration,
    required EffectHandler<Effect, Msg> handler,
  }) : _handler = handler;

  /// Schedules the handling of an effect by delaying it according to [duration].
  ///
  /// If there is an existing scheduled effect, it will be cancelled and replaced
  /// with the new effect. This ensures that only the most recent effect is handled
  /// after the delay.
  ///
  /// Parameters:
  /// - [effect]: The effect to be handled.
  /// - [emit]: A function to emit messages as a result of handling the effect.
  @override
  FutureOr<void> call(
    Effect effect,
    MsgEmitter<Msg> emit,
  ) {
    _cancelTimer();
    _timer = Timer(duration, () => _handler(effect, emit));
  }

  /// Cancels any currently scheduled effect handling.
  ///
  /// This is typically used to prevent the handling of a previously scheduled effect
  /// if a new effect has been scheduled for handling or if effect handling is no longer required.
  @override
  Future<void> dispose() async {
    _cancelTimer();
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
