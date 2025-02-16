import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart';

import '../datetime_converter_feature.dart';

part 'datetime_converter_message.freezed.dart';

@freezed
@immutable
sealed class DatetimeConverterMessage with _$DatetimeConverterMessage {
  const factory DatetimeConverterMessage.updateInput(String input) =
      UpdateInputMessage;

  const factory DatetimeConverterMessage.updateDatetime(TZDateTime datetime) =
      UpdateDatetimeMessage;

  const factory DatetimeConverterMessage.updateInputType(InputType type) =
      UpdateInputTypeMessage;

  const factory DatetimeConverterMessage.updateDatetimeFormat(
      DatetimeFormat format) = UpdateDatetimeFormatMessage;

  const factory DatetimeConverterMessage.clear() = ClearMessage;

  const factory DatetimeConverterMessage.getNow() = GetNowMessage;

  const factory DatetimeConverterMessage.setNow(TZDateTime datetime) =
      SetNowMessage;
}
