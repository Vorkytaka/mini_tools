part of 'number_base_feature.dart';

@immutable
sealed class NumberBaseEvent {
  const NumberBaseEvent._();
}

// @immutable
// final class UpdateInputEvent implements NumberBaseEvent {
//   final String? base2;
//   final String? base8;
//   final String? base10;
//   final String? base16;
//
//   const UpdateInputEvent.base2(this.base2)
//       : base8 = null,
//         base10 = null,
//         base16 = null;
//
//   const UpdateInputEvent.base8(this.base8)
//       : base2 = null,
//         base10 = null,
//         base16 = null;
//
//   const UpdateInputEvent.base10(this.base10)
//       : base2 = null,
//         base8 = null,
//         base16 = null;
//
//   const UpdateInputEvent.base16(this.base16)
//       : base2 = null,
//         base8 = null,
//         base10 = null;
// }

@immutable
sealed class UpdateInputEvent implements NumberBaseEvent {
  final String input;

  const UpdateInputEvent(this.input);
}

@immutable
final class UpdateBase2Event extends UpdateInputEvent {
  const UpdateBase2Event(super.input);
}

@immutable
final class UpdateBase8Event extends UpdateInputEvent {
  const UpdateBase8Event(super.input);
}

@immutable
final class UpdateBase10Event extends UpdateInputEvent {
  const UpdateBase10Event(super.input);
}

@immutable
final class UpdateBase16Event extends UpdateInputEvent {
  const UpdateBase16Event(super.input);
}
