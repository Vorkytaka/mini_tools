import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart';

part 'datetime_converter_state.freezed.dart';

enum InputType { sec, ms, us, iso }

enum DatetimeFormat { iso8601, rfc2822 }

@freezed
@immutable
class DatetimeConverterState with _$DatetimeConverterState {
  const factory DatetimeConverterState({
    required TZDateTime? datetime,
    required bool isReadOnly,
    required String input,
    required InputType inputType,
    required DatetimeFormat format,
  }) = _DatetimeConverterState;

  factory DatetimeConverterState.defaultValue() => const DatetimeConverterState(
    datetime: null,
    isReadOnly: false,
    input: '',
    inputType: InputType.sec,
    format: DatetimeFormat.rfc2822,
  );
}
