import 'package:flutter/material.dart';

import '../../../common/list_utils.dart';
import '../../../common/regexp.dart';
import '../../../i18n/strings.g.dart';
import '../domain/parser/cron_parser.dart';

extension CronFormat on Cron {
  TextSpan formatTextSpan(BuildContext context) {
    final t = Translations.of(context);
    final selectedParts = SharedAppData.getValue<String, List<CronPart>>(
      context,
      'cron/selected/parts',
      () => const [],
    );

    const selectedColor = Colors.yellow;
    final isMinutesSelected = selectedParts.contains(CronPart.minutes);
    final isHoursSelected = selectedParts.contains(CronPart.hours);
    final isDaysOfMonthSelected = selectedParts.contains(CronPart.days);
    final isMonthsSelected = selectedParts.contains(CronPart.months);
    final isDaysOfWeekSelected = selectedParts.contains(CronPart.weekdays);

    final spans = <TextSpan>[TextSpan(text: t.cron.cronFormat.atBegin)];

    // Handle time (minutes and hours)
    if (minutes is Single && hours is Single) {
      final m = (minutes as Single).value;
      final h = (hours as Single).value;
      final time = TimeOfDay(hour: h, minute: m);
      spans.add(
        TextSpan(
          text: time.format(context),
          style: TextStyle(
            color: isMinutesSelected || isHoursSelected ? selectedColor : null,
          ),
        ),
      );
      // buffer.write(time.format(context));
    } else {
      // buffer.write(minutes.formatMinutes(t));
      spans.add(
        TextSpan(
          text: minutes.formatMinutes(t),
          style: TextStyle(color: isMinutesSelected ? selectedColor : null),
        ),
      );
      final hoursFormatted = hours.formatHours(t);
      if (hoursFormatted != null) {
        spans.add(const TextSpan(text: ' '));
        spans.add(
          TextSpan(
            text: hoursFormatted,
            style: TextStyle(color: isHoursSelected ? selectedColor : null),
          ),
        );
      }
    }

    // Days and weekdays
    final daysFormatted = days.formatDays(t);
    final weekdaysFormatted = weekdays.formatWeekdays(t);
    if (daysFormatted != null || weekdaysFormatted != null) {
      spans.add(TextSpan(text: ' ${t.common.on}'));
      if (daysFormatted != null) {
        spans.add(const TextSpan(text: ' '));
        spans.add(
          TextSpan(
            text: daysFormatted,
            style: TextStyle(
              color: isDaysOfMonthSelected ? selectedColor : null,
            ),
          ),
        );
      }
      if (weekdaysFormatted != null) {
        if (daysFormatted != null) {
          spans.add(TextSpan(text: ' ${t.common.and}'));
        }
        spans.add(const TextSpan(text: ' '));
        spans.add(
          TextSpan(
            text: weekdaysFormatted,
            style: TextStyle(
              color: isDaysOfWeekSelected ? selectedColor : null,
            ),
          ),
        );
      }
    }

    // Months
    final monthsFormatted = months.formatMonths(t);
    if (monthsFormatted != null) {
      spans.add(TextSpan(text: ' ${t.common.inWord} '));
      spans.add(
        TextSpan(
          text: monthsFormatted,
          style: TextStyle(color: isMonthsSelected ? selectedColor : null),
        ),
      );
    }

    spans.add(TextSpan(text: t.cron.cronFormat.atEnd));

    return TextSpan(children: spans);

    // return t.cron.cronFormat
    //     .atWhatTime(str: buffer.toString())
    //     .replaceAll(RegExps.whitespacesRegExp, ' ')
    //     .trim();
  }

  String format(BuildContext context) {
    final t = Translations.of(context);
    final buffer = StringBuffer();

    // Handle time (minutes and hours)
    if (minutes is Single && hours is Single) {
      final m = (minutes as Single).value;
      final h = (hours as Single).value;
      final time = TimeOfDay(hour: h, minute: m);
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
      buffer.write(' ${t.common.on}');
      if (daysFormatted != null) {
        buffer.write(' $daysFormatted');
      }
      if (weekdaysFormatted != null) {
        if (daysFormatted != null) {
          buffer.write(' ${t.common.and}');
        }
        buffer.write(' $weekdaysFormatted');
      }
    }

    // Months
    final monthsFormatted = months.formatMonths(t);
    if (monthsFormatted != null) {
      buffer.write(' ${t.common.inWord} $monthsFormatted');
    }

    return t.cron.cronFormat
        .atWhatTime(str: buffer.toString())
        .replaceAll(RegExps.whitespacesRegExp, ' ')
        .trim();
  }
}

extension CronExpressionFormatting on CronExpression {
  String formatMinutes(Translations t) {
    String rangeMapper(int from, int to) =>
        t.cron.cronFormat.minutes.range(from: from, to: to);

    return when(
      any: () => t.cron.cronFormat.minutes.any,
      single: (value) => t.cron.cronFormat.minutes.single(minute: value),
      range: rangeMapper,
      list: (values) => _formatList(values, _formatMinutePart, t),
      step:
          (base, step) => _formatStep(
            base.rangeMap(rangeMapper),
            t.cron.cronFormat.minutes.step(n: step, step: step),
          ),
    );
  }

  String? formatHours(Translations t) {
    String rangeMapper(int from, int to) =>
        t.cron.cronFormat.hours.range(from: from, to: to);

    return when(
      any: () => null,
      single: (value) => t.cron.cronFormat.hours.single(hour: value),
      range: rangeMapper,
      list: (values) => _formatList(values, _formatHourPart, t),
      step:
          (base, step) => _formatStep(
            base.rangeMap(rangeMapper),
            t.cron.cronFormat.hours.step(n: step, step: step),
          ),
    );
  }

  String? formatDays(Translations t) {
    String rangeMapper(int from, int to) =>
        t.cron.cronFormat.days.range(from: from, to: to);

    return when(
      any: () => null,
      single: (value) => t.cron.cronFormat.days.single(day: value),
      range: rangeMapper,
      list: (values) => _formatList(values, _formatDayPart, t),
      step:
          (base, step) => _formatStep(
            base.rangeMap(rangeMapper),
            t.cron.cronFormat.days.step(n: step, step: step),
          ),
    );
  }

  String? formatMonths(Translations t) {
    String rangeMapper(int from, int to) => t.cron.cronFormat.months.range(
      from: from.formatMonth(t),
      to: to.formatMonth(t),
    );
    return when(
      any: () => null,
      single: (v) => v.formatMonth(t),
      range: rangeMapper,
      list: (values) => _formatList(values, (e) => e.formatMonths(t)!, t),
      step:
          (base, step) => _formatStep(
            base.rangeMap(rangeMapper),
            t.cron.cronFormat.months.step(n: step, step: step),
          ),
    );
  }

  String? formatWeekdays(Translations t) {
    String rangeMapper(int from, int to) => t.cron.cronFormat.daysOfWeek.range(
      from: from.formatWeekday(t),
      to: to.formatWeekday(t),
    );
    return when(
      any: () => null,
      single: (v) => v.formatWeekday(t),
      range: rangeMapper,
      list: (values) => _formatList(values, (e) => e.formatWeekdays(t)!, t),
      step:
          (base, step) => _formatStep(
            base.rangeMap(rangeMapper),
            t.cron.cronFormat.daysOfWeek.step(n: step, step: step),
          ),
    );
  }

  String _formatStep(String baseText, String stepText) {
    return [stepText, baseText].where((s) => s.isNotEmpty).join(' ');
  }

  String _formatList(
    List<CronExpression> values,
    String Function(CronExpression) formatter,
    Translations t,
  ) {
    return values
        .map(formatter)
        .joinWithLast(t.common.textSeparator, ' ${t.common.and} ');
  }

  String _formatMinutePart(CronExpression e) => e.formatMinutes(t);

  String _formatHourPart(CronExpression e) => e.formatHours(t) ?? '';

  String _formatDayPart(CronExpression e) => e.formatDays(t) ?? '';
}

extension on int {
  String formatMonth(Translations t) {
    return t.common.months.full[this - 1];
  }

  String formatWeekday(Translations t) {
    return t.common.dayOfWeek.full[this];
  }
}

extension on CronExpression {
  // Dirty hack for step cases
  String rangeMap(String Function(int from, int to) map) {
    return maybeWhen(
      any: () => '',
      range: map,
      orElse: () => throw const FormatException(),
    );
  }
}
