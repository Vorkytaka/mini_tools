import 'package:freezed_annotation/freezed_annotation.dart';

import '../number_base_feature.dart';

part 'number_base_message.freezed.dart';

@immutable
sealed class NumberBaseMessage {
  const NumberBaseMessage._();
}

@freezed
@immutable
sealed class UpdateInputMessage
    with _$UpdateInputMessage
    implements NumberBaseMessage {
  const factory UpdateInputMessage.base2(String input) = UpdateBase2Message;

  const factory UpdateInputMessage.base8(String input) = UpdateBase8Message;

  const factory UpdateInputMessage.base10(String input) = UpdateBase10Message;

  const factory UpdateInputMessage.base16(String input) = UpdateBase16Message;

  const factory UpdateInputMessage.custom(String input) = UpdateCustomMessage;
}

@freezed
@immutable
class UpdateCustomBaseMessage
    with _$UpdateCustomBaseMessage
    implements NumberBaseMessage {
  @Assert('base >= 2 && base <= 36')
  const factory UpdateCustomBaseMessage({required int base}) =
      _UpdateCustomBaseMessage;
}

@freezed
@immutable
class SetStateMessage with _$SetStateMessage implements NumberBaseMessage {
  const factory SetStateMessage(NumberBaseState state) = _SetStateMessage;
}
