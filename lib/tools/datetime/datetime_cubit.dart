import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:timezone/timezone.dart';

class DatetimeCubit extends Cubit<DatetimeState> {
  DatetimeCubit() : super(const DatetimeState.init());

  void setNow(Location timezone) {
    TZDateTime now = TZDateTime.now(timezone);
    // Not the best idea do it here
    // But we fine for now
    now = now.toInputType(state.inputType);
    final input = state.inputType.formatDatetime(now);

    emit(state.copyWith(
      datetime: now,
      input: input,
    ));
  }

  void clear() {
    emit(DatetimeState(
      datetime: null,
      input: '',
      inputType: state.inputType,
      format: state.format,
    ));
  }

  void onInputUpdate(String inputText, Location timezone) {
    TZDateTime? datetime;

    if (state.inputType == InputType.iso) {
      try {
        datetime = TZDateTime.parse(timezone, inputText);
      } on FormatException catch (_) {
        datetime = null;
      }
    } else {
      int? intInput = int.tryParse(inputText);

      if (intInput != null) {
        switch (state.inputType) {
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

        datetime = TZDateTime.fromMicrosecondsSinceEpoch(
          timezone,
          intInput,
        );
      }
    }

    emit(state.copyWith(
      datetime: datetime,
      input: inputText,
    ));
  }

  void onInputTypeUpdate(InputType inputType) {
    final datetime = state.datetime;
    String? newInput;
    if (datetime != null) {
      switch (inputType) {
        case InputType.sec:
          newInput = '${datetime.millisecondsSinceEpoch ~/ 1000}';
          break;
        case InputType.ms:
          newInput = '${datetime.millisecondsSinceEpoch}';
          break;
        case InputType.us:
          newInput = '${datetime.microsecondsSinceEpoch}';
          break;
        case InputType.iso:
          newInput = datetime.toIso8601String();
      }
    }
    emit(state.copyWith(
      input: newInput ?? state.input,
      inputType: inputType,
    ));
  }

  void onDatetimeFormatUpdate(DatetimeFormat format) {
    emit(state.copyWith(format: format));
  }
}

extension on InputType {
  String formatDatetime(DateTime datetime) {
    switch (this) {
      case InputType.sec:
        return '${datetime.millisecondsSinceEpoch ~/ 1000}';
      case InputType.ms:
        return '${datetime.millisecondsSinceEpoch}';
      case InputType.us:
        return '${datetime.microsecondsSinceEpoch}';
      case InputType.iso:
        return datetime.toIso8601String();
    }
  }
}

enum InputType {
  sec,
  ms,
  us,
  iso,
}

enum DatetimeFormat {
  iso8601,
  rfc2822,
}

@immutable
class DatetimeState {
  final TZDateTime? datetime;
  final String input;
  final InputType inputType;
  final DatetimeFormat format;

  const DatetimeState({
    required this.datetime,
    required this.input,
    required this.inputType,
    required this.format,
  });

  const DatetimeState.init()
      : datetime = null,
        input = '',
        inputType = InputType.sec,
        format = DatetimeFormat.iso8601;

  DatetimeState copyWith({
    TZDateTime? datetime,
    String? input,
    InputType? inputType,
    DatetimeFormat? format,
  }) {
    return DatetimeState(
      datetime: datetime ?? this.datetime,
      input: input ?? this.input,
      inputType: inputType ?? this.inputType,
      format: format ?? this.format,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatetimeState &&
          runtimeType == other.runtimeType &&
          datetime == other.datetime &&
          input == other.input &&
          inputType == other.inputType &&
          format == other.format;

  @override
  int get hashCode =>
      datetime.hashCode ^ input.hashCode ^ inputType.hashCode ^ format.hashCode;
}

extension on TZDateTime {
  TZDateTime copyWith({
    Location? location,
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    bool? isUtc,
  }) {
    isUtc ??= this.isUtc;
    if (isUtc) {
      return TZDateTime.utc(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
        microsecond ?? this.microsecond,
      );
    }

    return TZDateTime(
      location ?? this.location,
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }

  TZDateTime toInputType(InputType type) {
    switch (type) {
      case InputType.sec:
        return copyWith(millisecond: 0, microsecond: 0);
      case InputType.ms:
        return copyWith(microsecond: 0);
      case InputType.us:
      case InputType.iso:
        return this;
    }
  }
}
