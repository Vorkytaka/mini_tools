import '../cron_parser.dart';

sealed class CronException implements Exception {
  const factory CronException.partly({
    CronException? minutes,
    CronException? hours,
    CronException? daysOfMonth,
    CronException? months,
    CronException? daysOfWeek,
  }) = InvalidCronPartException;

  const factory CronException.custom() = CustomCronException;

  const factory CronException.empty() = EmptyCronException;

  const factory CronException.value({
    required int value,
    required CronPart part,
  }) = InvalidValueException;

  const factory CronException.rangeLength() = InvalidRangeLengthException;

  const factory CronException.range({
    required int from,
    required int to,
  }) = InvalidRangeException;

  const factory CronException.stepLength() = InvalidStepLengthException;

  const factory CronException.step({
    required int step,
    required CronPart part,
  }) = InvalidStepException;
}

class EmptyCronException implements CronException {
  const EmptyCronException();
}

class CustomCronException implements CronException {
  const CustomCronException();
}

class InvalidValueException implements CronException {
  final int value;
  final CronPart part;

  const InvalidValueException({
    required this.value,
    required this.part,
  });
}

class InvalidRangeLengthException implements CronException {
  const InvalidRangeLengthException();
}

class InvalidRangeException implements CronException {
  final int from;
  final int to;

  const InvalidRangeException({
    required this.from,
    required this.to,
  });
}

class InvalidStepLengthException implements CronException {
  const InvalidStepLengthException();
}

class InvalidStepException implements CronException {
  final int step;
  final CronPart part;

  const InvalidStepException({
    required this.step,
    required this.part,
  });
}

class InvalidCronPartException implements CronException {
  final CronException? minutes;
  final CronException? hours;
  final CronException? daysOfMonth;
  final CronException? months;
  final CronException? daysOfWeek;

  const InvalidCronPartException({
    this.minutes,
    this.hours,
    this.daysOfMonth,
    this.months,
    this.daysOfWeek,
  });
}
