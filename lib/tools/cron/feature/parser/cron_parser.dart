import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/regexp.dart';
import 'exception/cron_exception.dart';

part 'cron_parser.freezed.dart';

final _monthsRegExp = RegExp('JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC');

final _weekdayRegExp = RegExp('SUN|MON|TUE|WED|THU|FRI|SAT');

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

const _nonStandard = {
  // 0 * * * *
  '@hourly': Cron(
    minutes: CronExpression.single(0),
    hours: CronExpression.any(),
    days: CronExpression.any(),
    months: CronExpression.any(),
    weekdays: CronExpression.any(),
  ),
  // 0 0 * * *
  '@daily': Cron(
    minutes: CronExpression.single(0),
    hours: CronExpression.single(0),
    days: CronExpression.any(),
    months: CronExpression.any(),
    weekdays: CronExpression.any(),
  ),
  // 0 0 * * 0
  '@weekly': Cron(
    minutes: CronExpression.single(0),
    hours: CronExpression.single(0),
    days: CronExpression.any(),
    months: CronExpression.any(),
    weekdays: CronExpression.single(0),
  ),
  // 0 0 1 * *
  '@monthly': Cron(
    minutes: CronExpression.single(0),
    hours: CronExpression.single(0),
    days: CronExpression.single(1),
    months: CronExpression.any(),
    weekdays: CronExpression.any(),
  ),
  // 0 0 1 * *
  '@annually': Cron(
    minutes: CronExpression.single(0),
    hours: CronExpression.single(0),
    days: CronExpression.single(1),
    months: CronExpression.single(1),
    weekdays: CronExpression.any(),
  ),
  // 0 0 1 * *
  '@yearly': Cron(
    minutes: CronExpression.single(0),
    hours: CronExpression.single(0),
    days: CronExpression.single(1),
    months: CronExpression.single(1),
    weekdays: CronExpression.any(),
  ),
};

enum CronPart {
  minutes,
  hours,
  days,
  months,
  weekdays,
}

extension CronExpressionUtils on CronExpression {
  List<int> getAll(CronPart part) {
    return when(
      any: () => [for (int i = part.minValue; i <= part.maxValue; i++) i],
      single: (value) => [value],
      range: (from, to) => [for (int i = from; i <= to; i++) i],
      list: (values) => [
        for (final value in values) ...value.getAll(part),
      ],
      step: (base, step) => base
          .getAll(part)
          .where((i) => base.stepMatches(i, step))
          .toList(growable: false),
    );
  }
}

extension CronPartUtils on CronPart {
  bool checkNumbers(List<int?> number) {
    return number.every(checkNumber);
  }

  bool checkNumber(int? number) {
    if (number == null) {
      return false;
    }

    return number >= minValue && number <= maxValue;
  }

  int get minValue {
    return switch (this) {
      CronPart.minutes => 0,
      CronPart.hours => 0,
      CronPart.days => 1,
      CronPart.months => 1,
      CronPart.weekdays => 0,
    };
  }

  int get maxValue {
    return switch (this) {
      CronPart.minutes => 59,
      CronPart.hours => 23,
      CronPart.days => 31,
      CronPart.months => 12,
      CronPart.weekdays => 6,
    };
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
        return expression
            .replaceAllMapped(
                _weekdayRegExp, (match) => _weekdayNames[match.group(0)!]!)
            .replaceAll('7', '0');
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
  const factory CronExpression.any() = Any;

  const factory CronExpression.single(int value) = Single;

  const factory CronExpression.range({required int from, required int to}) =
      Range;

  const factory CronExpression.list(List<CronExpression> values) = ValuesList;

  const factory CronExpression.step({
    required CronExpression base,
    required int step,
  }) = Step;
}

Cron parseCron(String cron) {
  cron = cron.trim();

  final nonStandard = _nonStandard[cron];
  if (nonStandard != null) {
    return nonStandard;
  }

  cron = cron.toUpperCase();
  final parts = cron.split(RegExps.whitespacesRegExp);

  if (parts.length > 5) {
    throw const CronException.custom();
  }

  CronExpression? minutes, hours, days, months, weekdays;
  CronException? eMinutes, eHours, eDays, eMonths, eWeekdays;

  try {
    minutes = parseExpression(parts.elementAtOrNull(0), CronPart.minutes);
  } on CronException catch (e) {
    eMinutes = e;
  }

  try {
    hours = parseExpression(parts.elementAtOrNull(1), CronPart.hours);
  } on CronException catch (e) {
    eHours = e;
  }

  try {
    days = parseExpression(parts.elementAtOrNull(2), CronPart.days);
  } on CronException catch (e) {
    eDays = e;
  }

  try {
    months = parseExpression(parts.elementAtOrNull(3), CronPart.months);
  } on CronException catch (e) {
    eMonths = e;
  }

  try {
    weekdays = parseExpression(parts.elementAtOrNull(4), CronPart.weekdays);
  } on CronException catch (e) {
    eWeekdays = e;
  }

  if (minutes == null ||
      hours == null ||
      days == null ||
      months == null ||
      weekdays == null) {
    throw CronException.partly(
      minutes: eMinutes,
      hours: eHours,
      daysOfMonth: eDays,
      months: eMonths,
      daysOfWeek: eWeekdays,
    );
  }

  return Cron(
    minutes: minutes,
    hours: hours,
    days: days,
    months: months,
    weekdays: weekdays,
  );
}

CronExpression parseExpression(String? expression, CronPart part) {
  if (expression == null || expression.isEmpty) {
    throw const CronException.empty();
  }

  expression = part.normalized(expression);

  if (expression == '*') {
    return const CronExpression.any();
  }

  final singleValue = int.tryParse(expression);
  if (singleValue != null) {
    if (!part.checkNumber(singleValue)) {
      throw CronException.value(
        value: singleValue,
        part: part,
      );
    }
    return CronExpression.single(singleValue);
  }

  if (expression.contains(',')) {
    final values = expression.split(',').toSet();

    final parts = <CronExpression>[];
    for (final value in values) {
      final cronValue = parseExpression(value, part);

      if (cronValue is Any) {
        throw const CronException.custom();
      }

      parts.add(cronValue);
    }

    return CronExpression.list(parts);
  }

  if (expression.contains('-')) {
    final rangeValues = expression.split('-');

    if (rangeValues.length != 2 ||
        rangeValues[0].isEmpty ||
        rangeValues[1].isEmpty) {
      throw const CronException.rangeLength();
    }

    final from = int.tryParse(rangeValues[0]);
    final to = int.tryParse(rangeValues[1]);

    if (from != null && to != null) {
      if (from >= to) {
        throw CronException.range(from: from, to: to);
      }

      if (!part.checkNumber(from)) {
        throw CronException.value(
          value: from,
          part: part,
        );
      }

      if (!part.checkNumber(to)) {
        throw CronException.value(
          value: to,
          part: part,
        );
      }

      return CronExpression.range(from: from, to: to);
    }
  }

  if (expression.contains('/')) {
    final parts = expression.split('/');

    if (parts.length != 2 || parts[0].isEmpty || parts[1].isEmpty) {
      throw const CronException.stepLength();
    }

    final step = int.tryParse(parts[1]);
    if (step != null) {
      if (!part.checkNumber(step) || step == 0) {
        throw CronException.step(
          step: step,
          part: part,
        );
      }

      CronExpression base = parseExpression(parts[0], part);

      // N/M cron means from N to max value every M step
      // e.g. with minutes `30/5` means every 5 minute from 30 to 59.
      if (base is Single) {
        base = CronExpression.range(from: base.value, to: part.maxValue);
      }

      if (step == 1) {
        return base;
      }

      // Step expression only can handle * and -
      // As say before – single value just mapped into range
      final isValidBase = switch (base) {
        Any() => true,
        Single() => false,
        Range() => true,
        ValuesList() => false,
        Step() => false,
      };

      if (!isValidBase) {
        throw const CronException.custom();
      }

      return CronExpression.step(base: base, step: step);
    }
  }

  throw const CronException.custom();
}

extension CronExpressionMatcher on CronExpression {
  bool matches(int value) {
    return when(
      any: () => true,
      single: (v) => value == v,
      range: (from, to) => value >= from && value <= to,
      list: (values) => values.any((v) => v.matches(value)),
      step: (v, step) => v.stepMatches(value, step),
    );
  }

  // 0 9-17/2 * * *
  // 9, 11, 13, 15, 17
  bool stepMatches(int value, int step) {
    return when(
      any: () => value % step == 0,
      single: (v) => value >= v && (value - v) % step == 0,
      range: (from, to) =>
          value >= from && value <= to && (value - from) % step == 0,
      list: (_) => throw Exception(),
      step: (_, __) => throw Exception(),
    );
  }
}

extension CronUtils on Cron {
  DateTime nextRun(DateTime from) {
    // Add one minute, so we ignore this exact time
    DateTime current = from.add(const Duration(minutes: 1));
    if (current.second != 0 ||
        current.millisecond != 0 ||
        current.microsecond != 0) {
      current = current.copyWith(second: 0, millisecond: 0, microsecond: 0);
    }

    while (true) {
      // Match each field starting from the most granular (minute) to the least granular (month)
      if (!minutes.matches(current.minute)) {
        current = _nextValidMinute(minutes, current);
        continue;
      }

      if (!hours.matches(current.hour)) {
        current = _nextValidHour(hours, current);
        continue;
      }

      // Check if either days or weekdays are specified and if the current day matches
      final bool daysIsAny = days is Any;
      final bool weekdaysIsAny = weekdays is Any;
      final bool dayMatches;

      if (!daysIsAny && !weekdaysIsAny) {
        // Both are specified: day must match either
        dayMatches = days.matches(current.day) ||
            weekdays.matches(current.weekday % DateTime.daysPerWeek);
      } else if (!daysIsAny) {
        // Only days are specified
        dayMatches = days.matches(current.day);
      } else if (!weekdaysIsAny) {
        // Only weekdays are specified
        dayMatches = weekdays.matches(current.weekday % DateTime.daysPerWeek);
      } else {
        dayMatches = true;
      }

      if (!dayMatches) {
        current = _nextValidDay(this, current);
        continue;
      }

      if (!months.matches(current.month)) {
        current = _nextValidMonth(months, current);
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
      final bool daysIsAny = cron.days is Any;
      final bool weekdaysIsAny = cron.weekdays is Any;
      final bool dayMatches;

      if (!daysIsAny && !weekdaysIsAny) {
        // Both are specified: day must match either
        dayMatches = days.matches(current.day) ||
            weekdays.matches(current.weekday % DateTime.daysPerWeek);
      } else if (!daysIsAny) {
        // Only days are specified
        dayMatches = days.matches(current.day);
      } else if (!weekdaysIsAny) {
        // Only weekdays are specified
        dayMatches = weekdays.matches(current.weekday % DateTime.daysPerWeek);
      } else {
        dayMatches = true;
      }

      if (dayMatches) {
        return current;
      }
      current = current.add(const Duration(days: 1));
      current = DateTime(
          current.year, current.month, current.day); // Reset time to midnight
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
}
