import 'dart:async';

import 'package:flutter/cupertino.dart';

enum DatetimeHolderType {
  ms,
  sec,
  min,
}

class _DatetimeModel extends InheritedModel<DatetimeHolderType> {
  final DateTime datetime;

  const _DatetimeModel({
    required this.datetime,
    required super.child,
  });

  @override
  bool updateShouldNotify(_DatetimeModel oldWidget) {
    return datetime != oldWidget.datetime;
  }

  @override
  bool updateShouldNotifyDependent(
    _DatetimeModel oldWidget,
    Set<DatetimeHolderType> dependencies,
  ) {
    if (dependencies.contains(DatetimeHolderType.sec)) {
      return datetime.second != oldWidget.datetime.second;
    } else if (dependencies.contains(DatetimeHolderType.min)) {
      return datetime.minute != oldWidget.datetime.minute;
    }

    return datetime != oldWidget.datetime;
  }
}

class DatetimeHolder extends StatefulWidget {
  final Widget child;

  const DatetimeHolder({
    required this.child,
    super.key,
  });

  @override
  State<DatetimeHolder> createState() => _DatetimeHolderState();

  static DateTime of(
    BuildContext context, {
    DatetimeHolderType type = DatetimeHolderType.ms,
  }) {
    return context
        .dependOnInheritedWidgetOfExactType<_DatetimeModel>(aspect: type)!
        .datetime;
  }
}

class _DatetimeHolderState extends State<DatetimeHolder> {
  late final Timer _timer;
  DateTime _now = DateTime.now();

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 100), _onUpdate);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _DatetimeModel(
      datetime: _now,
      child: widget.child,
    );
  }

  void _onUpdate(Timer _) {
    _now = DateTime.now();
    setState(() {});
  }
}
