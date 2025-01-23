import 'package:freezed_annotation/freezed_annotation.dart';

part 'cron_parser.freezed.dart';

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
        if (number <= 59) {
          return true;
        }
      case CronPart.hours:
        if (number <= 23) {
          return true;
        }
      case CronPart.days:
        if (number <= 31) {
          return true;
        }
      case CronPart.months:
        if (number <= 12) {
          return true;
        }
      case CronPart.weekdays:
        if (number <= 7) {
          return true;
        }
    }

    return false;
  }

  String normalized(String expression) {
    switch (this) {
      case CronPart.minutes:
      case CronPart.hours:
      case CronPart.days:
        return expression;
      case CronPart.months:
        return expression;
      case CronPart.weekdays:
        return expression;
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
