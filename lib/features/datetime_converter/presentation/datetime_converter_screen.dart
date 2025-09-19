import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:timezone/timezone.dart';

import '../../../common/datetime.dart';
import '../../../common/datetime_inherited_model.dart';
import '../../../common/duration.dart';
import '../../../common/macos_read_only_field.dart';
import '../../../common/padding.dart';
import '../../../common/text_styles.dart';
import '../../../i18n/strings.g.dart';
import '../domain/datetime_converter_feature.dart';

extension on InputType {
  String format(BuildContext context) {
    final t = Translations.of(context);
    switch (this) {
      case InputType.sec:
        return t.datetimeConverter.inputType.sec;
      case InputType.ms:
        return t.datetimeConverter.inputType.ms;
      case InputType.us:
        return t.datetimeConverter.inputType.us;
      case InputType.iso:
        return t.datetimeConverter.inputType.iso;
    }
  }
}

extension on DatetimeFormat {
  String format(BuildContext context) {
    final t = Translations.of(context);
    switch (this) {
      case DatetimeFormat.iso8601:
        return t.datetimeConverter.datetimeFormat.iso;
      case DatetimeFormat.rfc2822:
        return t.datetimeConverter.datetimeFormat.rfc;
    }
  }
}

class DatetimeConverterScreen extends StatelessWidget {
  const DatetimeConverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        centerTitle: true,
        title: Text(t.datetimeConverter.title),
      ),
      children: [
        ContentArea(
          builder:
              (context, controller) => SingleChildScrollView(
                controller: controller,
                child: Padding(
                  padding: panePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: headlinePadding,
                        child: Row(
                          children: [
                            Text(t.common.input),
                            const SizedBox(width: 8),
                            const _NowButton(),
                            const SizedBox(width: 8),
                            const _ClearButton(),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 260),
                            child: const _InputField(),
                          ),
                          const SizedBox(width: 8),
                          const _InputTypeSelector(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const MacosPulldownMenuDivider(),
                      const SizedBox(height: 8),
                      const _DateTimeOutput(),
                    ],
                  ),
                ),
              ),
        ),
      ],
    );
  }
}

class _NowButton extends StatelessWidget {
  const _NowButton();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
      buildWhen: (prev, curr) => prev.isReadOnly != curr.isReadOnly,
      builder: (context, state) {
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed:
              state.isReadOnly
                  ? null
                  : () {
                    context.read<DatetimeConverterFeature>().accept(
                      const DatetimeConverterMessage.getNow(),
                    );
                  },
          child: Text(t.datetimeConverter.now),
        );
      },
    );
  }
}

class _ClearButton extends StatelessWidget {
  const _ClearButton();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
      buildWhen: (prev, curr) => prev.isReadOnly != curr.isReadOnly,
      builder: (context, state) {
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed:
              state.isReadOnly
                  ? null
                  : () {
                    context.read<DatetimeConverterFeature>().accept(
                      const DatetimeConverterMessage.clear(),
                    );
                  },
          secondary: true,
          child: Text(t.common.clear),
        );
      },
    );
  }
}

class _InputField extends StatefulWidget {
  const _InputField();

  @override
  State<_InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<_InputField> {
  final _inputController = TextEditingController();
  bool _isReadOnly = false;

  @override
  void initState() {
    super.initState();

    final feature = context.read<DatetimeConverterFeature>();
    final state = feature.state;
    if (state.input != _inputController.text) {
      _inputController.text = state.input;
    }
    _isReadOnly = state.isReadOnly;

    _inputController.addListener(_onInputChange);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.watch<DatetimeConverterFeature>();
    final input = feature.state.input;
    if (input != _inputController.text) {
      _inputController.text = input;
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosTextField(
      readOnly: _isReadOnly,
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: false,
      ),
      controller: _inputController,
    );
  }

  void _onInputChange() {
    final inputText = _inputController.text;
    context.read<DatetimeConverterFeature>().accept(
      DatetimeConverterMessage.updateInput(inputText),
    );
  }
}

class _DateTimeOutput extends StatelessWidget {
  static final _weekdayFormat = DateFormat.EEEE();
  static final _dateFormat = DateFormat.yMd();
  static final _timeFormat = DateFormat.Hms();

  const _DateTimeOutput();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
      buildWhen: (prev, curr) => prev.datetime != curr.datetime,
      builder: (context, state) {
        final datetime = state.datetime;

        return Padding(
          padding: headlinePadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: _DateTimeLocalUTCOutput(datetime: datetime)),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _DateItem(
                      title: t.datetimeConverter.weekday,
                      datetime: datetime,
                      mapper: _weekdayFormat.format,
                    ),
                    const SizedBox(height: 12),
                    _DateItem(
                      title: t.datetimeConverter.weekOfTheYear,
                      datetime: datetime,
                      mapper: (datetime) => '${weekNumber(datetime)}',
                    ),
                    const SizedBox(height: 12),
                    _DateItem(
                      title: t.datetimeConverter.dayOfTheYear,
                      datetime: datetime,
                      mapper: (datetime) => '${dayNumber(datetime)}',
                    ),
                    const SizedBox(height: 12),
                    _DateItem(
                      title: t.datetimeConverter.leapYear,
                      datetime: datetime,
                      mapper:
                          (datetime) =>
                              isLeapYear(datetime) ? t.common.yes : t.common.no,
                    ),
                    const SizedBox(height: 12),
                    _DateItem(
                      title: t.datetimeConverter.dateOnly,
                      datetime: datetime,
                      mapper: _dateFormat.format,
                    ),
                    const SizedBox(height: 12),
                    _DateItem(
                      title: t.datetimeConverter.timeOnly,
                      datetime: datetime,
                      mapper: _timeFormat.format,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DateTimeLocalUTCOutput extends StatefulWidget {
  final TZDateTime? datetime;

  const _DateTimeLocalUTCOutput({required this.datetime});

  @override
  State<_DateTimeLocalUTCOutput> createState() =>
      _DateTimeLocalUTCOutputState();
}

class _DateTimeLocalUTCOutputState extends State<_DateTimeLocalUTCOutput> {
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(t.datetimeConverter.datetimeFormat.hint),
            const SizedBox(width: 8),
            FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
              buildWhen: (prev, curr) => prev.format != curr.format,
              builder: (context, state) {
                return MacosPopupButton(
                  value: state.format,
                  items: DatetimeFormat.values
                      .map(
                        (type) => MacosPopupMenuItem(
                          value: type,
                          child: Text(type.format(context)),
                        ),
                      )
                      .toList(growable: false),
                  onChanged: (format) {
                    if (format != null) {
                      context.read<DatetimeConverterFeature>().accept(
                        DatetimeConverterMessage.updateDatetimeFormat(format),
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 12),
        FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
          builder: (context, state) {
            final format = state.format;
            return _DateItem(
              title: t.datetimeConverter.local,
              datetime: widget.datetime,
              mapper: (datetime) => _formatDatetime(datetime, format),
            );
          },
        ),
        const SizedBox(height: 12),
        FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
          builder: (context, state) {
            final format = state.format;
            return _DateItem(
              title: t.datetimeConverter.utc,
              datetime: widget.datetime,
              mapper: (datetime) => _formatDatetime(datetime.toUtc(), format),
            );
          },
        ),
        const SizedBox(height: 12),
        FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
          buildWhen: (prev, curr) => prev.datetime != curr.datetime,
          builder: (context, state) {
            final t = Translations.of(context);
            final datetime = state.datetime;

            if (datetime == null) {
              return _DateItem(
                title: t.datetimeConverter.relative,
                datetime: datetime,
                mapper: (datetime) => '',
              );
            }

            final now = DatetimeHolder.of(
              context,
              type: DatetimeHolderType.sec,
            );
            final diff = now.difference(datetime);

            return _DateItem(
              title: t.datetimeConverter.relative,
              datetime: datetime,
              mapper:
                  (datetime) => diff.format(
                    onZero: t.datetimeConverter.relativeFormat.rightNow,
                    onDays:
                        (days) =>
                            t.datetimeConverter.relativeFormat.days(days: days),
                    onHours:
                        (hours) => t.datetimeConverter.relativeFormat.hours(
                          hours: hours,
                        ),
                    onMinutes:
                        (min) => t.datetimeConverter.relativeFormat.minutes(
                          minutes: min,
                        ),
                    onSeconds:
                        (sec) => t.datetimeConverter.relativeFormat.seconds(
                          seconds: sec,
                        ),
                    positiveWrapper:
                        (str) => t.datetimeConverter.relativeFormat.positive(
                          str: str,
                        ),
                    negativeWrapper:
                        (str) => t.datetimeConverter.relativeFormat.negative(
                          str: str,
                        ),
                    separator: t.common.textSeparator,
                  ),
            );
          },
        ),
      ],
    );
  }

  String _formatDatetime(TZDateTime datetime, DatetimeFormat format) {
    switch (format) {
      case DatetimeFormat.iso8601:
        return datetime.toIso8601String();
      case DatetimeFormat.rfc2822:
        return datetime.toRfc2822String();
    }
  }
}

class _InputTypeSelector extends StatelessWidget {
  const _InputTypeSelector();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<DatetimeConverterFeature, DatetimeConverterState>(
      buildWhen: (prev, curr) => prev.inputType != curr.inputType,
      builder: (context, state) {
        return MacosPopupButton(
          value: state.inputType,
          items: InputType.values
              .map(
                (type) => MacosPopupMenuItem(
                  value: type,
                  child: Text(type.format(context)),
                ),
              )
              .toList(growable: false),
          onChanged: (type) {
            if (type != null) {
              context.read<DatetimeConverterFeature>().accept(
                DatetimeConverterMessage.updateInputType(type),
              );
            }
          },
        );
      },
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
                Clipboard.setData(ClipboardData(text: text));
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
  final diff = date.difference(
    TZDateTime(date.location, date.year, 1, 0, 0, 0),
  );
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
