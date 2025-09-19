import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/datetime_converter_state.dart';

part 'datetime_converter_effect.freezed.dart';

@freezed
@immutable
sealed class DatetimeConverterEffect with _$DatetimeConverterEffect {
  const factory DatetimeConverterEffect.getNow() = GetNowEffect;

  const factory DatetimeConverterEffect.parse({
    required String input,
    required InputType type,
  }) = ParseEffect;

  const factory DatetimeConverterEffect.setInitialDatetime(DateTime datetime) =
      SetInitialDatetimeEffect;
}
