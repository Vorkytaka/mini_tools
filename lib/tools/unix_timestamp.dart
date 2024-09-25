import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:timezone/timezone.dart';

import '../common/macos_read_only_field.dart';
import '../common/text_styles.dart';
import '../common/timezone_holder.dart';
import '../i18n/strings.g.dart';
import 'tools.dart';

final unixTimestampTool = BaseTool(
  titleBuilder: (context) => Translations.of(context).unixTimestamp.title,
  icon: Icons.timelapse,
  screenBuilder: (context) => const UnixTimestampToolWidget(),
);

enum TimestampType {
  sec,
  ms,
  us,
  iso,
}

extension on TimestampType {
  String format(BuildContext context) {
    final t = Translations.of(context);
    switch (this) {
      case TimestampType.sec:
        return t.unixTimestamp.inputType.sec;
      case TimestampType.ms:
        return t.unixTimestamp.inputType.ms;
      case TimestampType.us:
        return t.unixTimestamp.inputType.us;
      case TimestampType.iso:
        return t.unixTimestamp.inputType.iso;
    }
  }
}

// Date: Tue, 15 Nov 1994 08:12:31 GMT
// Date: Fri, 21 Nov 1997 09:55:06 -0600
enum DatetimeFormat {
  iso8601,
  rfc2822,
}

extension on DatetimeFormat {
  String format(BuildContext context) {
    final t = Translations.of(context);
    switch (this) {
      case DatetimeFormat.iso8601:
        return t.unixTimestamp.datetimeFormat.iso;
      case DatetimeFormat.rfc2822:
        return t.unixTimestamp.datetimeFormat.rfc;
    }
  }
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
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        centerTitle: true,
        title: Text(t.unixTimestamp.title),
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
                      Text(t.common.input),
                      const SizedBox(width: 12),
                      PushButton(
                        controlSize: ControlSize.regular,
                        onPressed: _setNow,
                        child: Text(t.unixTimestamp.now),
                      ),
                      const SizedBox(width: 12),
                      PushButton(
                        controlSize: ControlSize.regular,
                        onPressed: _clear,
                        secondary: true,
                        child: Text(t.common.clear),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 260),
                        child: MacosTextField(
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
                                child: Text(type.format(context)),
                              ),
                            )
                            .toList(growable: false),
                        onChanged: _onInputTypeUpdate,
                      ),
                    ],
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

    final String input;
    switch (_type) {
      case TimestampType.sec:
        input = '${now.millisecondsSinceEpoch ~/ 1000}';
      case TimestampType.ms:
        input = '${now.millisecondsSinceEpoch}';
      case TimestampType.us:
        input = '${now.microsecondsSinceEpoch}';
      case TimestampType.iso:
        input = now.toIso8601String();
    }

    _inputController.text = input;
  }

  void _clear() {
    _inputController.text = '';
    _datetime = null;
    setState(() {});
  }

  void _onInputChange() {
    final inputText = _inputController.text;
    final timezone = TimezoneHolder.of(context);

    if (_type == TimestampType.iso) {
      try {
        _datetime = TZDateTime.parse(timezone, inputText);
      } on FormatException catch (_) {
        _datetime = null;
      }
    } else {
      int? input = int.tryParse(inputText);

      if (input == null) {
        _datetime = null;
        setState(() {});
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
        case TimestampType.iso:
          // Do nothing here
          break;
      }

      _datetime = TZDateTime.fromMicrosecondsSinceEpoch(timezone, input);
    }

    setState(() {});
  }

  void _onInputTypeUpdate(TimestampType? type) {
    if (type != null && type != _type) {
      setState(() {
        _type = type;

        final datetime = _datetime;
        if (datetime != null) {
          // Update input
          String newInput;
          switch (type) {
            case TimestampType.sec:
              newInput = '${datetime.millisecondsSinceEpoch ~/ 1000}';
              break;
            case TimestampType.ms:
              newInput = '${datetime.millisecondsSinceEpoch}';
              break;
            case TimestampType.us:
              newInput = '${datetime.microsecondsSinceEpoch}';
              break;
            case TimestampType.iso:
              newInput = datetime.toIso8601String();
          }
          _inputController.text = newInput;
        }
      });
    }
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
    final t = Translations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _DateTimeLocalUTCOutput(datetime: datetime),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DateItem(
                title: t.unixTimestamp.weekday,
                datetime: datetime,
                mapper: _weekdayFormat.format,
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: t.unixTimestamp.weekOfTheYear,
                datetime: datetime,
                mapper: (datetime) => '${weekNumber(datetime)}',
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: t.unixTimestamp.dayOfTheYear,
                datetime: datetime,
                mapper: (datetime) => '${dayNumber(datetime)}',
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: t.unixTimestamp.leapYear,
                datetime: datetime,
                mapper: (datetime) =>
                    isLeapYear(datetime) ? t.common.yes : t.common.no,
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: t.unixTimestamp.dateOnly,
                datetime: datetime,
                mapper: _dateFormat.format,
              ),
              const SizedBox(height: 12),
              _DateItem(
                title: t.unixTimestamp.timeOnly,
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

class _DateTimeLocalUTCOutput extends StatefulWidget {
  final TZDateTime? datetime;

  const _DateTimeLocalUTCOutput({
    required this.datetime,
  });

  @override
  State<_DateTimeLocalUTCOutput> createState() =>
      _DateTimeLocalUTCOutputState();
}

class _DateTimeLocalUTCOutputState extends State<_DateTimeLocalUTCOutput> {
  DatetimeFormat _format = DatetimeFormat.iso8601;

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(t.unixTimestamp.datetimeFormat.hint),
            const SizedBox(width: 8),
            MacosPopupButton(
              value: _format,
              items: DatetimeFormat.values
                  .map(
                    (type) => MacosPopupMenuItem(
                      value: type,
                      child: Text(type.format(context)),
                    ),
                  )
                  .toList(growable: false),
              onChanged: (format) {
                if (format != null && format != _format) {
                  setState(() {
                    _format = format;
                  });
                }
              },
            ),
          ],
        ),
        const SizedBox(height: 12),
        _DateItem(
          title: t.unixTimestamp.local,
          datetime: widget.datetime,
          mapper: _formatDatetime,
        ),
        const SizedBox(height: 12),
        _DateItem(
          title: t.unixTimestamp.utc,
          datetime: widget.datetime,
          mapper: (datetime) => _formatDatetime(datetime.toUtc()),
        ),
      ],
    );
  }

  String _formatDatetime(TZDateTime datetime) {
    switch (_format) {
      case DatetimeFormat.iso8601:
        return datetime.toIso8601String();
      case DatetimeFormat.rfc2822:
        return formatRFC2822(datetime);
    }
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
    final t = Translations.of(context);

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
                style: TextStyles.mono,
                maxLines: 1,
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
              semanticLabel: t.common.copy,
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
  final diff =
      date.difference(TZDateTime(date.location, date.year, 1, 0, 0, 0));
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

bool isLeapYear(TZDateTime date) =>
    (date.year % 4 == 0) && ((date.year % 100 != 0) || (date.year % 400 == 0));

String formatRFC2822(TZDateTime? dateTime) {
  if (dateTime == null) {
    return '';
  }

  final tz = _formatTimeZoneOffset(dateTime);

  final string = DateFormat('EEE, d MMM y HH:mm:ss').format(dateTime);
  return '$string $tz';
}

String _formatTimeZoneOffset(DateTime dateTime) {
  final offset = dateTime.timeZoneOffset;
  final hours = offset.inHours.abs().toString().padLeft(2, '0');
  final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
  final sign = offset.isNegative ? '-' : '+';

  return '$sign$hours$minutes';
}
