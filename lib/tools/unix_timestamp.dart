import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:macos_ui/macos_ui.dart';

enum TimestampType {
  sec,
  ms,
  us,
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
  DateTime? _datetime;

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
                children: [
                  Row(
                    children: [
                      PushButton(
                        controlSize: ControlSize.regular,
                        onPressed: _setNow,
                        child: Text('Now'),
                      ),
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
                  const SizedBox(height: 16),
                  MacosPulldownMenuDivider(),
                  const SizedBox(height: 16),
                  _DateTimeOutput(datetime: _datetime),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _setNow() {
    final now = DateTime.now();

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

    _datetime = DateTime.fromMicrosecondsSinceEpoch(input);
    setState(() {});
  }
}

class _DateTimeOutput extends StatelessWidget {
  final DateTime? datetime;

  static final _weekdayFormat = DateFormat.EEEE();
  static final _dateFormat = DateFormat.yMd();
  static final _timeFormat = DateFormat.Hms();

  const _DateTimeOutput({
    required this.datetime,
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
              SizedBox(height: 12),
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
              SizedBox(height: 12),
              _DateItem(
                title: 'Week of the year',
                datetime: datetime,
                mapper: (datetime) => '${weekNumber(datetime)}',
              ),
              SizedBox(height: 12),
              _DateItem(
                title: 'Day of the year',
                datetime: datetime,
                mapper: (datetime) => '${dayNumber(datetime)}',
              ),
              SizedBox(height: 12),
              _DateItem(
                title: 'Leap year',
                datetime: datetime,
                mapper: isLeapYearYesNo,
              ),
              SizedBox(height: 12),
              _DateItem(
                title: 'Date only',
                datetime: datetime,
                mapper: (datetime) => '${_dateFormat.format(datetime)}',
              ),
              SizedBox(height: 12),
              _DateItem(
                title: 'Time only',
                datetime: datetime,
                mapper: (datetime) => '${_timeFormat.format(datetime)}',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

typedef _DateItemMapper = String Function(DateTime datetime);

class _DateItem extends StatefulWidget {
  final String title;
  final DateTime? datetime;
  final _DateItemMapper mapper;

  const _DateItem({
    required this.title,
    required this.datetime,
    required this.mapper,
  });

  @override
  State<_DateItem> createState() => _DateItemState();
}

class _DateItemState extends State<_DateItem> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _updateText();
  }

  @override
  void didUpdateWidget(_DateItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.datetime != oldWidget.datetime ||
        widget.mapper != widget.mapper) {
      _updateText();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateText() {
    final datetime = widget.datetime;
    if (datetime != null) {
      _controller.text = widget.mapper(datetime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: MacosTextField(
                maxLines: 1,
                readOnly: true,
                controller: _controller,
              ),
            ),
            const SizedBox(width: 4),
            MacosIconButton(
              onPressed: () {
                Clipboard.setData(
                  ClipboardData(
                    text: _controller.text,
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
}

int dayNumber(DateTime date) {
  final diff = date.difference(DateTime(date.year, 1, 0, 0, 0));
  return diff.inDays;
}

/// Calculates number of weeks for a given year as per https://en.wikipedia.org/wiki/ISO_week_date#Weeks_per_year
int numOfWeeks(int year) {
  final dec28 = DateTime(year, 12, 28);
  final dayOfDec28 = int.parse(DateFormat('D').format(dec28));
  return ((dayOfDec28 - dec28.weekday + 10) / 7).floor();
}

/// Calculates week number from a date as per https://en.wikipedia.org/wiki/ISO_week_date#Calculation
int weekNumber(DateTime date) {
  final int dayOfYear = int.parse(DateFormat('D').format(date));
  int woy = ((dayOfYear - date.weekday + 10) / 7).floor();
  if (woy < 1) {
    woy = numOfWeeks(date.year - 1);
  } else if (woy > numOfWeeks(date.year)) {
    woy = 1;
  }
  return woy;
}

String isLeapYearYesNo(DateTime date) => isLeapYear(date) ? 'Yes' : 'No';

bool isLeapYear(DateTime date) =>
    (date.year % 4 == 0) && ((date.year % 100 != 0) || (date.year % 400 == 0));
