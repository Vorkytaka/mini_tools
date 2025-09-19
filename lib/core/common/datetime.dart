import 'package:intl/intl.dart';

extension DateTimeUtils on DateTime {
  String toRfc2822String() {
    final string = DateFormat('EEE, d MMM y HH:mm:ss').format(this);
    if (timeZoneOffset != Duration.zero) {
      final tz = _formatTimeZoneOffset(this);
      return '$string $tz';
    }

    return string;
  }

  static String _formatTimeZoneOffset(DateTime dateTime) {
    final offset = dateTime.timeZoneOffset;
    final hours = offset.inHours.abs().toString().padLeft(2, '0');
    final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final sign = offset.isNegative ? '-' : '+';

    return '$sign$hours$minutes';
  }
}
