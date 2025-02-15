extension DurationUtils on Duration {
  /// Return as many days in this
  int get days => inDays;

  /// Return as many hours in this, except days
  ///
  /// Value will be between 0 and 24.
  int get hours => inHours - days * Duration.hoursPerDay;

  /// Return as many minutes in this, except days and hours
  ///
  /// Value will be between 0 and 60
  int get minutes =>
      inMinutes -
      days * Duration.minutesPerDay -
      hours * Duration.minutesPerHour;

  int get seconds =>
      inSeconds -
      days * Duration.secondsPerDay -
      hours * Duration.secondsPerHour -
      minutes * Duration.secondsPerMinute;

  /// Format current [Duration] with given functions for each value.
  ///
  /// [onZero] will be used for cases, when this [Duration] has zero [inSeconds].
  /// Otherwise all other Functions will be used to format each possible value.
  String format({
    required String onZero,
    required String Function(int days) onDays,
    required String Function(int hours) onHours,
    required String Function(int minutes) onMinutes,
    required String Function(int seconds) onSeconds,
    String Function(String str)? wrapper,
    String separator = ' ',
  }) {
    if (inSeconds == 0) {
      return onZero;
    }

    final buffer = StringBuffer();
    if (days > 0) {
      buffer.write(onDays(days));
    }
    if (hours > 0) {
      if (buffer.isNotEmpty) {
        buffer.write(separator);
      }
      buffer.write(onHours(hours));
    }
    if (minutes > 0) {
      if (buffer.isNotEmpty) {
        buffer.write(separator);
      }
      buffer.write(onMinutes(minutes));
    }
    if (seconds > 0) {
      if (buffer.isNotEmpty) {
        buffer.write(separator);
      }
      buffer.write(onSeconds(seconds));
    }

    return wrapper != null ? wrapper(buffer.toString()) : buffer.toString();
  }

  String negativeFormat({
    required String onZero,
    required String Function(int days) onDays,
    required String Function(int hours) onHours,
    required String Function(int minutes) onMinutes,
    required String Function(int seconds) onSeconds,
    String Function(String str)? wrapper,
    String separator = ' ',
  }) {
    final negative = -this;
    return negative.format(
      onZero: onZero,
      onDays: onDays,
      onHours: onHours,
      onMinutes: onMinutes,
      onSeconds: onSeconds,
      wrapper: wrapper,
      separator: separator,
    );
  }
}
