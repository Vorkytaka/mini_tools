import 'package:flutter/widgets.dart';
import 'package:timezone/timezone.dart';

class TimezoneHolder extends InheritedWidget {
  final Location timezone;

  const TimezoneHolder({
    required super.child,
    required this.timezone,
    super.key,
  });

  @override
  bool updateShouldNotify(TimezoneHolder oldWidget) =>
      oldWidget.timezone != timezone;

  static Location of(BuildContext context) => maybeOf(context)!;

  static Location? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<TimezoneHolder>()?.timezone;
}
