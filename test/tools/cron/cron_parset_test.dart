import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/tools/cron/feature/parser/cron_parser.dart';

void main() {
  group('nextRun', () {
    test('Cron: * * * * * (Every minute)', () {
      const cron = Cron(
        minutes: CronExpression.any(),
        hours: CronExpression.any(),
        days: CronExpression.any(),
        months: CronExpression.any(),
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 1, 27, 12, 0); // 12:00 PM
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 1, 27, 12, 1)); // Next minute
    });

    test('Cron: 0 * * * * (Every hour at minute 0)', () {
      const cron = Cron(
        minutes: CronExpression.single(0),
        hours: CronExpression.any(),
        days: CronExpression.any(),
        months: CronExpression.any(),
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 1, 27, 12, 15); // 12:15 PM
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 1, 27, 13, 0)); // Next hour at 1:00 PM
    });

    test('Cron: 30 14 * * * (2:30 PM every day)', () {
      const cron = Cron(
        minutes: CronExpression.single(30),
        hours: CronExpression.single(14),
        days: CronExpression.any(),
        months: CronExpression.any(),
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 1, 27, 13, 45); // 1:45 PM
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 1, 27, 14, 30)); // Today at 2:30 PM
    });

    test('Cron: 15 10 1 * * (10:15 AM on the 1st of every month)', () {
      const cron = Cron(
        minutes: CronExpression.single(15),
        hours: CronExpression.single(10),
        days: CronExpression.single(1),
        months: CronExpression.any(),
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 1, 27, 10, 0); // January 27th, 10:00 AM
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 2, 1, 10, 15)); // February 1st at 10:15 AM
    });

    test('Cron: 0 12 * * MON (12:00 PM on Mondays)', () {
      const cron = Cron(
        minutes: CronExpression.single(0),
        hours: CronExpression.single(12),
        days: CronExpression.any(),
        months: CronExpression.any(),
        weekdays: CronExpression.single(DateTime.monday),
      );

      final now = DateTime(2025, 1, 27, 11, 45); // Monday, 11:45 AM
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 1, 27, 12, 0)); // Today at 12:00 PM
    });

    test('Cron: 0 0 1 1 * (Midnight on January 1st every year)', () {
      const cron = Cron(
        minutes: CronExpression.single(0),
        hours: CronExpression.single(0),
        days: CronExpression.single(1),
        months: CronExpression.single(1),
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 6, 15, 12, 0); // June 15th, 2025
      final next = cron.nextRun(now);

      expect(next, DateTime(2026, 1, 1, 0, 0)); // January 1st, 2026
    });

    test('Cron: 0 9-17/2 * * * (Every 2 hours between 9 AM and 5 PM)', () {
      const cron = Cron(
        minutes: CronExpression.single(0),
        hours: CronExpression.step(value: 9, step: 2),
        days: CronExpression.any(),
        months: CronExpression.any(),
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 1, 27, 10, 30); // 10:30 AM
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 1, 27, 11, 0)); // Next valid time at 11:00 AM
    });

    test('Cron: * * * FEB MON (Every minute in February on Mondays)', () {
      const cron = Cron(
        minutes: CronExpression.any(),
        hours: CronExpression.any(),
        days: CronExpression.any(),
        months: CronExpression.single(2),
        // February
        weekdays: CronExpression.single(DateTime.monday),
      );

      final now = DateTime(2025, 1, 27, 12, 30); // January 27th (Monday)
      final next = cron.nextRun(now);

      expect(next, DateTime(2025, 2, 3, 0, 0)); // First Monday in February
    });

    test('Cron: 15 14 29 2 * (2:15 PM on February 29th, leap years only)', () {
      const cron = Cron(
        minutes: CronExpression.single(15),
        hours: CronExpression.single(14),
        days: CronExpression.single(29),
        months: CronExpression.single(2),
        // February
        weekdays: CronExpression.any(),
      );

      final now = DateTime(2025, 1, 1, 0, 0); // January 1st, 2025
      final next = cron.nextRun(now);

      expect(next, DateTime(2028, 2, 29, 14, 15)); // February 29th, 2028
    });
  });
}
