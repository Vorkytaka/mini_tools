import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:timezone/timezone.dart';

import '../common/macos_read_only_field.dart';
import '../common/timezone_holder.dart';
import 'tools.dart';

final unixTimestampTool = Tool(
  title: 'Unix timestamp',
  icon: Icons.timelapse,
  screenBuilder: (context) => const UnixTimestampToolWidget(),
);

enum TimestampType {
  sec,
  ms,
  us,
}

// Date: Tue, 15 Nov 1994 08:12:31 GMT
// Date: Fri, 21 Nov 1997 09:55:06 -0600
enum DatetimeFormat {
  iso8601,
  rfc2822,
  rfc3339,
}

class UnixTimestampToolWidget extends StatefulWidget {
  const UnixTimestampToolWidget({super.key});

  @override
  State<UnixTimestampToolWidget> createState() =>
      _UnixTimestampToolWidgetState();
}

class _UnixTimestampToolWidgetState extends State<UnixTimestampToolWidget> {
  final _inputController = TextEditingController();
  TimestampType _type = TimestampType.sec;
  TZDateTime? _datetime;

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputChange);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        centerTitle: true,
        title: Text('Unix Timestamp'),
      ),
      children: [
        ContentArea(
          builder: (context, controller) => SingleChildScrollView(
            controller: controller,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      const Text('Input:'),
                      const SizedBox(width: 12),
                      PushButton(
                        controlSize: ControlSize.regular,
                        onPressed: _setNow,
                        child: const Text('Now'),
                      ),
                      const SizedBox(width: 12),
                      PushButton(
                        controlSize: ControlSize.regular,
                        onPressed: _clear,
                        secondary: true,
                        child: const Text('Clear'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: MacosTextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: false,
                              signed: false,
                            ),
                            controller: _inputController,
                          ),
                        ),
                        const SizedBox(width: 8),
                        MacosPopupButton(
                          value: _type,
                          items: TimestampType.values
                              .map(
                                (type) => MacosPopupMenuItem(
                                  value: type,
                                  child: Text(type.name),
                                ),
                              )
                              .toList(growable: false),
                          onChanged: (type) {
                            if (type != null && type != _type) {
                              setState(() {
                                _type = type;
                                _onInputChange();
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const MacosPulldownMenuDivider(),
                  const SizedBox(height: 16),
                  _DateTimeOutput(
                    datetime: _datetime,
                    key: ValueKey(_datetime?.microsecondsSinceEpoch),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _setNow() {
    final timezone = TimezoneHolder.of(context);
    final now = TZDateTime.now(timezone);

    final int input;
    switch (_type) {
      case TimestampType.sec:
        input = now.millisecondsSinceEpoch ~/ 1000;
      case TimestampType.ms:
        input = now.millisecondsSinceEpoch;
      case TimestampType.us:
        input = now.microsecondsSinceEpoch;
    }

    _inputController.text = '$input';
  }

  void _clear() {
    _inputController.text = '';
    _datetime = null;
    setState(() {});
  }

  void _onInputChange() {
    final inputText = _inputController.text;
    int? input = int.tryParse(inputText);

    if (input == null) {
      return;
    }

    switch (_type) {
      case TimestampType.sec:
        input = input * Duration.microsecondsPerSecond;
        break;
      case TimestampType.ms:
        input = input * Duration.microsecondsPerMillisecond;
        break;
      case TimestampType.us:
        break;
    }

    final timezone = TimezoneHolder.of(context);

    _datetime = TZDateTime.fromMicrosecondsSinceEpoch(timezone, input);
    setState(() {});
  }
}

class _DateTimeOutput extends StatelessWidget {
  final TZDateTime? datetime;

  static final _weekdayFormat = DateFormat.EEEE();
  static final _dateFormat = DateFormat.yMd();
  static final _timeFormat = DateFormat.Hms();

  const _DateTimeOutput({
    required this.datetime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DateItem(
                title: 'Local time',
                datetime: datetime,
                mapper: (datetime) => datetime.toIso8601String(),
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: 'UTC time',
                datetime: datetime,
                mapper: (datetime) => datetime.toUtc().toIso8601String(),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DateItem(
                title: 'Weekday',
                datetime: datetime,
                mapper: _weekdayFormat.format,
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: 'Week of the year',
                datetime: datetime,
                mapper: (datetime) => '${weekNumber(datetime)}',
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: 'Day of the year',
                datetime: datetime,
                mapper: (datetime) => '${dayNumber(datetime)}',
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: 'Leap year',
                datetime: datetime,
                mapper: isLeapYearYesNo,
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: 'Date only',
                datetime: datetime,
                mapper: _dateFormat.format,
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: 'Time only',
                datetime: datetime,
                mapper: _timeFormat.format,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

typedef _DateItemMapper = String Function(TZDateTime datetime);

class _DateItem extends StatelessWidget {
  final String title;
  final TZDateTime? datetime;
  final _DateItemMapper mapper;

  const _DateItem({
    required this.title,
    required this.datetime,
    required this.mapper,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: MacosReadonlyField(
                text: text,
              ),
            ),
            const SizedBox(width: 4),
            MacosIconButton(
              onPressed: () {
                Clipboard.setData(
                  ClipboardData(
                    text: text,
                  ),
                );
              },
              semanticLabel: 'Copy',
              icon: const MacosIcon(
                size: 16,
                CupertinoIcons.doc_on_clipboard_fill,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String get text {
    final datetime = this.datetime;
    if (datetime != null) {
      return mapper(datetime);
    } else {
      return '';
    }
  }
}

int dayNumber(TZDateTime date) {
  final diff = date.difference(TZDateTime(date.location, date.year, 1, 0, 0, 0));
  return diff.inDays;
}

/// Calculates number of weeks for a given year as per https://en.wikipedia.org/wiki/ISO_week_date#Weeks_per_year
int numOfWeeks(int year) {
  final dec28 = DateTime(year, 12, 28);
  final dayOfDec28 = int.parse(DateFormat('D').format(dec28));
  return ((dayOfDec28 - dec28.weekday + 10) / 7).floor();
}

/// Calculates week number from a date as per https://en.wikipedia.org/wiki/ISO_week_date#Calculation
int weekNumber(TZDateTime date) {
  final int dayOfYear = int.parse(DateFormat('D').format(date));
  int woy = ((dayOfYear - date.weekday + 10) / 7).floor();
  if (woy < 1) {
    woy = numOfWeeks(date.year - 1);
  } else if (woy > numOfWeeks(date.year)) {
    woy = 1;
  }
  return woy;
}

String isLeapYearYesNo(TZDateTime date) => isLeapYear(date) ? 'Yes' : 'No';

bool isLeapYear(TZDateTime date) =>
    (date.year % 4 == 0) && ((date.year % 100 != 0) || (date.year % 400 == 0));
