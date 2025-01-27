import 'package:flutter/cupertino.dart';

import '../../i18n/strings.g.dart';
import 'feature/parser/cron_parser.dart';

extension CronFormat on Cron {
  String format(BuildContext context) {
    final t = Translations.of(context);
    final buffer = StringBuffer();

    buffer.write('At ');
    if (minutes is Single && hours is Single) {
      final minutes = this.minutes as Single;
      final hours = this.hours as Single;

      final m = minutes.value.toString().padLeft(2, '0');
      final h = hours.value.toString().padLeft(2, '0');

      buffer.write('$h:$m');
    } else {
      buffer.write(minutes.formatMinutes(t));

      final hours = this.hours.formatHours(t);
      if (hours != null) {
        buffer.write(' $hours');
      }
    }

    final days = this.days.formatDays(t);
    if (days != null) {
      buffer.write(' $days');
    }

    final weekdays = this.weekdays.formatWeekday(t);
    if (weekdays != null) {
      if (days != null) {
        buffer.write(' and');
      }
      buffer.write(' $weekdays');
    }

    final months = this.months.formatMonths(t);
    if (months != null) {
      buffer.write(' $months');
    }

    return buffer.toString();
  }
}

extension on CronExpression {
  String formatMinutes(Translations t) {
    return when(
      any: () => 'every minute',
      single: (value) => 'minute $value',
      range: (from, to) => 'every minute from $from to $to',
      list: (values) => 'minute ${values.join(', ')}',
      step: (_, __) => throw Exception(),
    );
  }

  String? formatHours(Translations t) {
    return when(
      any: () => null,
      single: (value) => 'past hour $value',
      range: (from, to) => 'past every hour from $from through $to',
      list: (values) => 'past hour ${values.join(', ')}',
      step: (_, __) => throw Exception(),
    );
  }

  String? formatDays(Translations t) {
    return when(
      any: () => null,
      single: (value) => 'on day-of-month $value',
      range: (from, to) => 'on every day-of-month from $from through $to',
      list: (values) => 'on day-of-month ${values.join(', ')}',
      step: (_, __) => throw Exception(),
    );
  }

  String? formatMonths(Translations t) {
    return when(
      any: () => null,
      single: (value) => 'in ${value.formatMonth(t)}',
      range: (from, to) =>
          'in every month from ${from.formatMonth(t)} through ${to.formatMonth(t)}',
      list: (values) => 'in ${values.map((e) => e.formatMonth(t)).join(', ')}',
      step: (_, __) => throw Exception(),
    );
  }

  String? formatWeekday(Translations t) {
    return when(
      any: () => null,
      single: (value) => 'on ${value.formatWeekday(t)}',
      range: (from, to) =>
          'on every day-of-week from ${from.formatWeekday(t)} through ${to.formatWeekday(t)}',
      list: (values) =>
          'on ${values.map((e) => e.formatWeekday(t)).join(', ')}',
      step: (_, __) => throw Exception(),
    );
  }
}

extension on int {
  String formatMonth(Translations t) {
    return switch (this) {
      1 => 'JUN',
      2 => 'FEB',
      3 => 'MAR',
      4 => 'APR',
      5 => 'MAY',
      6 => 'JUN',
      7 => 'JUL',
      8 => 'AUG',
      9 => 'SEP',
      10 => 'OCT',
      11 => 'NOV',
      12 => 'DEC',
      _ => throw Exception(),
    };
  }

  String formatWeekday(Translations t) {
    return switch (this) {
      0 => 'SUN',
      1 => 'MON',
      2 => 'TUE',
      3 => 'WED',
      4 => 'THU',
      5 => 'FRI',
      6 => 'SAT',
      7 => 'SUN',
      _ => throw Exception(),
    };
  }
}
