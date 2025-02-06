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

  const factory CronException.value() = InvalidValueException;

  const factory CronException.range() = InvalidRangeException;

  const factory CronException.step() = InvalidStepException;
}

class EmptyCronException implements CronException {
  const EmptyCronException();
}

class CustomCronException implements CronException {
  const CustomCronException();
}

class InvalidStructureException implements CronException {
  const InvalidStructureException();
}

class InvalidValueException implements CronException {
  const InvalidValueException();
}

class InvalidRangeException implements CronException {
  const InvalidRangeException();
}

class InvalidStepException implements CronException {
  const InvalidStepException();
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
