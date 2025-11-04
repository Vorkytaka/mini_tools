import 'package:mini_tea/feature.dart';
import 'package:timezone/timezone.dart';

import 'datetime_converter_feature.dart';

final class DatetimeConverterEffectHandler
    implements
        EffectHandler<DatetimeConverterEffect, DatetimeConverterMessage> {
  const DatetimeConverterEffectHandler();

  @override
  void call(
    DatetimeConverterEffect effect,
    MsgEmitter<DatetimeConverterMessage> emit,
  ) {
    switch (effect) {
      case GetNowEffect():
        return _getNow(effect, emit);
      case ParseEffect():
        return _parse(effect, emit);
      case SetInitialDatetimeEffect():
        return _setInitialDatetime(effect, emit);
    }
  }

  void _getNow(GetNowEffect effect, MsgEmitter<DatetimeConverterMessage> emit) {
    final timezone = local;
    final now = TZDateTime.now(timezone);
    emit(DatetimeConverterMessage.setNow(now));
  }

  void _parse(ParseEffect effect, MsgEmitter<DatetimeConverterMessage> emit) {
    final timezone = local;
    TZDateTime? datetime;

    if (effect.type == InputType.iso) {
      try {
        datetime = TZDateTime.parse(timezone, effect.input);
      } on FormatException {
        datetime = null;
      }
    } else {
      int? intInput = int.tryParse(effect.input);

      if (intInput == null) {
        return;
      }

      switch (effect.type) {
        case InputType.sec:
          intInput = intInput * Duration.microsecondsPerSecond;
          break;
        case InputType.ms:
          intInput = intInput * Duration.microsecondsPerMillisecond;
          break;
        case InputType.us:
          // Do nothing
          // Input already in us
          break;
        case InputType.iso:
          // Do nothing
          // Handled above
          break;
      }

      datetime = TZDateTime.fromMicrosecondsSinceEpoch(timezone, intInput);
    }

    if (datetime != null) {
      emit(DatetimeConverterMessage.updateDatetime(datetime));
    }
  }

  void _setInitialDatetime(
    SetInitialDatetimeEffect effect,
    MsgEmitter<DatetimeConverterMessage> emit,
  ) {
    final timezone = local;
    final datetime = TZDateTime.from(effect.datetime, timezone);
    emit(DatetimeConverterMessage.setInitialDatetime(datetime));
  }
}
