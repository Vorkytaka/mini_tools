import 'package:freezed_annotation/freezed_annotation.dart';

part 'cron_parser.freezed.dart';

final _monthsRegExp = RegExp(
  'JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC',
  caseSensitive: false,
);

final _weekdayRegExp = RegExp(
  'SUN|MON|TUE|WED|THU|FRI|SAT',
  caseSensitive: false,
);

const _monthNames = {
  'JAN': '1',
  'FEB': '2',
  'MAR': '3',
  'APR': '4',
  'MAY': '5',
  'JUN': '6',
  'JUL': '7',
  'AUG': '8',
  'SEP': '9',
  'OCT': '10',
  'NOV': '11',
  'DEC': '12'
};

const _weekdayNames = {
  'SUN': '0',
  'MON': '1',
  'TUE': '2',
  'WED': '3',
  'THU': '4',
  'FRI': '5',
  'SAT': '6'
};

enum CronPart {
  minutes,
  hours,
  days,
  months,
  weekdays,
}

extension on CronPart {
  bool checkNumbers(List<int?> number) {
    return number.every(checkNumber);
  }

  bool checkNumber(int? number) {
    if (number == null || number < 0) {
      return false;
    }

    switch (this) {
      case CronPart.minutes:
        return number <= 59;
      case CronPart.hours:
        return number <= 23;
      case CronPart.days:
        return number <= 31;
      case CronPart.months:
        return number > 0 && number <= 12;
      case CronPart.weekdays:
        return number <= 7;
    }
  }

  String normalized(String expression) {
    switch (this) {
      case CronPart.minutes:
      case CronPart.hours:
      case CronPart.days:
        return expression;
      case CronPart.months:
        return expression.replaceAllMapped(_monthsRegExp, (match) {
          return _monthNames[match.group(0)!]!;
        });
      case CronPart.weekdays:
        return expression.replaceAllMapped(_weekdayRegExp, (match) {
          return _weekdayNames[match.group(0)!]!;
        });
    }
  }
}

@freezed
@immutable
class Cron with _$Cron {
  const factory Cron({
    required CronExpression minutes,
    required CronExpression hours,
    required CronExpression days,
    required CronExpression months,
    required CronExpression weekdays,
  }) = _Cron;
}

@freezed
@immutable
sealed class CronExpression with _$CronExpression {
  const factory CronExpression.any() = _Any;

  const factory CronExpression.single(int value) = _Single;

  const factory CronExpression.range({required int from, required int to}) =
      _Range;

  const factory CronExpression.list(List<int> values) = _List;

  const factory CronExpression.step({
    required int value,
    required int step,
  }) = _Step;
}

final _whitespacesRegExp = RegExp(r'\s+');

Cron parseCron(String cron) {
  // todo: non-standard

  final parts = cron.split(_whitespacesRegExp);

  if (parts.length != 5) {
    throw const FormatException();
  }

  final minutes = parseExpression(parts[0], CronPart.minutes);
  final hours = parseExpression(parts[1], CronPart.hours);
  final days = parseExpression(parts[2], CronPart.days);
  final months = parseExpression(parts[3], CronPart.months);
  final weekdays = parseExpression(parts[4], CronPart.weekdays);

  return Cron(
    minutes: minutes,
    hours: hours,
    days: days,
    months: months,
    weekdays: weekdays,
  );
}

CronExpression parseExpression(String expression, CronPart part) {
  expression = part.normalized(expression);

  if (expression == '*') {
    return const CronExpression.any();
  }

  final singleValue = int.tryParse(expression);
  if (singleValue != null) {
    if (!part.checkNumber(singleValue)) {
      throw const FormatException();
    }
    return CronExpression.single(singleValue);
  }

  if (expression.contains('-')) {
    final rangeValues = expression.split('-');

    if (rangeValues.length != 2) {
      throw const FormatException();
    }

    final from = int.tryParse(rangeValues[0]);
    final to = int.tryParse(rangeValues[1]);

    if (from != null && to != null) {
      if (from >= to) {
        throw const FormatException();
      }

      if (!part.checkNumbers([from, to])) {
        throw const FormatException();
      }

      return CronExpression.range(from: from, to: to);
    }
  }

  if (expression.contains(',')) {
    final values = expression.split(',');

    final intValues = <int>[];
    for (final value in values) {
      final intValue = int.tryParse(value);

      if (intValue == null || !part.checkNumber(intValue)) {
        throw const FormatException();
      }

      intValues.add(intValue);
    }

    return CronExpression.list(intValues);
  }

  if (expression.contains('/')) {
    final parts = expression.split('/');

    if (parts.length != 2) {
      throw const FormatException();
    }

    final value = int.tryParse(parts[0]);
    final step = int.tryParse(parts[1]);

    if (value != null && step != null) {
      if (!part.checkNumbers([value, step])) {
        throw const FormatException();
      }

      return CronExpression.step(value: value, step: step);
    }
  }

  throw const FormatException();
}

extension CronExpressionMatcher on CronExpression {
  bool matches(int value) {
    return when(
      any: () => true,
      single: (v) => value == v,
      range: (from, to) => value >= from && value <= to,
      list: (values) => values.contains(value),
      step: (v, step) => value >= v && (value - v) % step == 0,
    );
  }
}

DateTime? nextRun(Cron cron, DateTime from) {
  // Add one minute, so we ignore this exact time
  DateTime current = from.add(const Duration(minutes: 1));

  while (true) {
    // Match each field starting from the most granular (minute) to the least granular (month)
    if (!cron.minutes.matches(current.minute)) {
      current = _nextValidMinute(cron.minutes, current);
      continue;
    }

    if (!cron.hours.matches(current.hour)) {
      current = _nextValidHour(cron.hours, current);
      continue;
    }

    if (!cron.days.matches(current.day) || !cron.weekdays.matches(current.weekday)) {
      current = _nextValidDay(cron, current);
      continue;
    }

    if (!cron.months.matches(current.month)) {
      current = _nextValidMonth(cron.months, current);
      continue;
    }

    // All fields match
    return current;
  }
}

/// Finds the next valid minute
DateTime _nextValidMinute(CronExpression minutes, DateTime current) {
  for (int minute = current.minute; minute < 60; minute++) {
    if (minutes.matches(minute)) {
      return DateTime(
        current.year,
        current.month,
        current.day,
        current.hour,
        minute,
      );
    }
  }
  return DateTime(current.year, current.month, current.day, current.hour + 1);
}

/// Finds the next valid hour
DateTime _nextValidHour(CronExpression hours, DateTime current) {
  for (int hour = current.hour; hour < 24; hour++) {
    if (hours.matches(hour)) {
      return DateTime(current.year, current.month, current.day, hour);
    }
  }
  return DateTime(current.year, current.month, current.day + 1);
}

/// Finds the next valid day (accounting for month and weekdays)
DateTime _nextValidDay(Cron cron, DateTime current) {
  while (true) {
    if (cron.days.matches(current.day) && cron.weekdays.matches(current.weekday)) {
      return current;
    }
    current = current.add(const Duration(days: 1));
    current = DateTime(current.year, current.month, current.day); // Reset time to midnight
  }
}

/// Finds the next valid month
DateTime _nextValidMonth(CronExpression months, DateTime current) {
  for (int month = current.month; month <= 12; month++) {
    if (months.matches(month)) {
      return DateTime(current.year, month, 1);
    }
  }
  return DateTime(current.year + 1, 1, 1);
}
