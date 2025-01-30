import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import 'feature/parser/cron_parser.dart';

extension CronFormat on Cron {
  String format(BuildContext context) {
    final t = Translations.of(context);
    final buffer = StringBuffer();

    buffer.write('At ');

    // Handle time (minutes and hours)
    if (minutes is Single && hours is Single) {
      final m = (minutes as Single).value;
      final h = (hours as Single).value;
      final time = TimeOfDay(hour: m, minute: h);
      buffer.write(time.format(context));
    } else {
      buffer.write(minutes.formatMinutes(t));
      final hoursFormatted = hours.formatHours(t);
      if (hoursFormatted != null) {
        buffer.write(' $hoursFormatted');
      }
    }

    // Days and weekdays
    final daysFormatted = days.formatDays(t);
    final weekdaysFormatted = weekdays.formatWeekdays(t);
    if (daysFormatted != null || weekdaysFormatted != null) {
      buffer.write(' on');
      if (daysFormatted != null) {
        buffer.write(' $daysFormatted');
      }
      if (weekdaysFormatted != null) {
        if (daysFormatted != null) {
          buffer.write(' and');
        }
        buffer.write(' $weekdaysFormatted');
      }
    }

    // Months
    final monthsFormatted = months.formatMonths(t);
    if (monthsFormatted != null) {
      buffer.write(' in $monthsFormatted');
    }

    return buffer.toString().replaceAll(RegExp(' +'), ' ').trim();
  }
}

extension CronExpressionFormatting on CronExpression {
  String formatMinutes(Translations t) {
    return when(
      any: () => 'Every minute',
      single: (v) => 'minute $v',
      range: (f, t) => 'every minute from $f to $t',
      list: (values) => _formatList(values, _formatMinutePart),
      step: (base, step) => _formatStep(base, step, 'minute', 'minutes', t),
    );
  }

  String? formatHours(Translations t) {
    return when(
      any: () => null,
      single: (v) => 'hour $v',
      range: (f, t) => 'every hour from $f to $t',
      list: (values) => 'hours ${_formatList(values, _formatHourPart)}',
      step: (base, step) => _formatStep(base, step, 'hour', 'hours', t),
    );
  }

  String? formatDays(Translations t) {
    return when(
      any: () => null,
      single: (v) => 'day $v',
      range: (f, t) => 'every day from $f to $t',
      list: (values) => 'days ${_formatList(values, _formatDayPart)}',
      step: (base, step) => _formatStep(base, step, 'day', 'days', t),
    );
  }

  String? formatMonths(Translations t) {
    return when(
      any: () => null,
      single: (v) => v.formatMonth(t),
      range: (f, step) => 'from ${f.formatMonth(t)} to ${step.formatMonth(t)}',
      list: (values) => _formatList(values, (e) => e.formatMonths(t)!),
      step: (base, step) => _formatStep(base, step, 'month', 'months', t),
    );
  }

  String? formatWeekdays(Translations t) {
    return when(
      any: () => null,
      single: (v) => v.formatWeekday(t),
      range: (f, step) => '${f.formatWeekday(t)} to ${step.formatWeekday(t)}',
      list: (values) => _formatList(values, (e) => e.formatWeekdays(t)!),
      step: (base, step) => _formatStep(base, step, 'weekday', 'weekdays', t),
    );
  }

  String _formatStep(
    CronExpression base,
    int step,
    String singular,
    String plural,
    Translations t,
  ) {
    final stepText = step == 1 ? 'every $singular' : 'every $step $plural';
    final baseText = base.when(
      any: () => '',
      single: (v) => 'starting from $v',
      range: (r, to) => 'between $r and $to',
      list: (_) => '',
      step: (_, __) => '',
    );
    return [stepText, baseText].where((s) => s.isNotEmpty).join(' ');
  }

  String _formatList(
    List<CronExpression> values,
    String Function(CronExpression) formatter,
  ) {
    return values.map(formatter).join(', ');
  }

  String _formatMinutePart(CronExpression e) => e.formatMinutes(t);

  String _formatHourPart(CronExpression e) => e.formatHours(t) ?? '';

  String _formatDayPart(CronExpression e) => e.formatDays(t) ?? '';
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
