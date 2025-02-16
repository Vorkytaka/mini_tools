import 'package:mini_tea/feature.dart';
import 'package:timezone/timezone.dart';

import 'effect/datetime_converter_effect.dart';
import 'message/datetime_converter_message.dart';
import 'state/datetime_converter_state.dart';

Next<DatetimeConverterState, DatetimeConverterEffect> datetimeConverterUpdate(
  DatetimeConverterState state,
  DatetimeConverterMessage message,
) {
  switch (message) {
    case UpdateInputMessage():
      return next(
        state: state.copyWith(input: message.input),
        effects: [
          DatetimeConverterEffect.parse(
            input: message.input,
            type: state.inputType,
          ),
        ],
      );
    case UpdateDatetimeMessage():
      return next(state: state.copyWith(datetime: message.datetime));
    case UpdateInputTypeMessage():
      return next(
        state: state.copyWith(
          input: updateInputByInputType(
                state.datetime,
                message.type,
              ) ??
              state.input,
          inputType: message.type,
        ),
      );
    case UpdateDatetimeFormatMessage():
      return next(state: state.copyWith(format: message.format));
    case ClearMessage():
      return next(
        state: state.copyWith(
          datetime: null,
          input: '',
        ),
      );
    case GetNowMessage():
      return next(effects: const [DatetimeConverterEffect.getNow()]);
    case SetNowMessage():
      return next(
        state: state.copyWith(
          datetime: message.datetime,
          input: updateInputByInputType(
                message.datetime,
                state.inputType,
              ) ??
              state.input,
        ),
      );
    case SetInitialDatetimeMessage():
      return next(
        state: state.copyWith(
          datetime: message.datetime,
          isReadOnly: true,
          input: updateInputByInputType(
                message.datetime,
                state.inputType,
              ) ??
              state.input,
        ),
      );
  }
}

String? updateInputByInputType(
  TZDateTime? datetime,
  InputType type,
) {
  if (datetime == null) {
    return null;
  }

  return switch (type) {
    InputType.sec => '${datetime.millisecondsSinceEpoch ~/ 1000}',
    InputType.ms => '${datetime.millisecondsSinceEpoch}',
    InputType.us => '${datetime.microsecondsSinceEpoch}',
    InputType.iso => datetime.toIso8601String(),
  };
}
