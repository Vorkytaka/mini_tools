import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:timezone/timezone.dart';

import '../../common/datetime.dart';
import '../../common/datetime_inherited_model.dart';
import '../../common/padding.dart';
import '../../common/regexp.dart';
import '../../common/timezone_holder.dart';
import '../../i18n/strings.g.dart';
import '../datetime_converter/datetime_converter_tool.dart';
import 'cron_format.dart';
import 'feature/cron_feature.dart';
import 'feature/parser/cron_parser.dart';
import 'feature/parser/exception/cron_exception.dart';

class CronToolScreen extends StatelessWidget {
  const CronToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        centerTitle: true,
        title: Text(t.cron.title),
      ),
      children: [
        ContentArea(builder: (context, _) => const _Body()),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Padding(
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
                PushButton(
                  controlSize: ControlSize.regular,
                  onPressed: () {
                    String text = context.read<CronFeature>().state.input;
                    text = text.trim();
                    text = text.replaceAll(RegExps.whitespacesRegExp, ' ');
                    Clipboard.setData(ClipboardData(text: text));
                  },
                  child: Text(t.common.copy),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const SizedBox(
            width: 300,
            child: _CronInput(),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: headlinePadding,
            child: _HumanReadCron(),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: headlinePadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final part in CronPart.values) ...[
                  const SizedBox(height: 4),
                  _CronPartValues(part: part),
                ],
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: headlinePadding,
            child: _NextAt(),
          ),
        ],
      ),
    );
  }
}

extension CronExpressionUtils on CronExpression {
  String formatToList({
    required Translations t,
    required CronPart part,
  }) {
    if (this is Any) {
      return t.cron.all;
    }

    final list = getAll(part);
    return list.map((i) => part.formatInt(t: t, num: i)).join(', ');
  }
}

extension on CronPart {
  String format(Translations t) {
    return switch (this) {
      CronPart.minutes => t.cron.minutes,
      CronPart.hours => t.cron.hours,
      CronPart.days => t.cron.daysOfMonth,
      CronPart.months => t.cron.months,
      CronPart.weekdays => t.cron.daysOfWeek,
    };
  }

  String formatInt({
    required Translations t,
    required int num,
  }) {
    return switch (this) {
      CronPart.minutes => ':${num.toString().padLeft(2, '0')}',
      CronPart.hours => '${num.toString().padLeft(2, '0')}:',
      CronPart.days => num.toString().padLeft(2, '0'),
      CronPart.months => t.common.months.full[num - 1],
      CronPart.weekdays => t.common.dayOfWeek.full[num],
    };
  }
}

class _CronPartValues extends StatelessWidget {
  final CronPart part;

  const _CronPartValues({
    required this.part,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<CronFeature, CronState>(
      buildWhen: (prev, curr) => prev.result != curr.result,
      builder: (context, state) {
        final selectedParts = SharedAppData.getValue<String, List<CronPart>>(
          context,
          'cron/selected/parts',
          () => const [],
        );

        final cron = state.cron;
        final expression = switch (part) {
          CronPart.minutes => cron?.minutes,
          CronPart.hours => cron?.hours,
          CronPart.days => cron?.days,
          CronPart.months => cron?.months,
          CronPart.weekdays => cron?.weekdays,
        };
        final exception = state.result.maybeWhen(
          failure: (e) => switch (e) {
            InvalidCronPartException() => switch (part) {
                CronPart.minutes => e.minutes,
                CronPart.hours => e.hours,
                CronPart.days => e.daysOfMonth,
                CronPart.months => e.months,
                CronPart.weekdays => e.daysOfWeek,
              },
            _ => null,
          },
          orElse: () => null,
        );

        final String text;
        Color? textColor;
        if (expression != null) {
          text = expression.formatToList(t: t, part: part);
        } else if (exception != null) {
          text = exception.format(t);
          textColor = Colors.red;
        } else {
          text = '-';
        }

        final titleColor = selectedParts.contains(part) ? Colors.yellow : null;

        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 130,
              child: Text(
                part.format(t),
                style: TextStyle(
                  color: titleColor,
                  decoration:
                      titleColor != null ? TextDecoration.underline : null,
                ),
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Fira Code',
                  color: textColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _CronInput extends StatefulWidget {
  const _CronInput();

  @override
  State<_CronInput> createState() => _CronInputState();
}

class _CronInputState extends State<_CronInput> {
  late final _controller = _CronTextEditingController(
    onPartSelectionChanged: _onPartSelectionChanged,
  );

  @override
  void initState() {
    super.initState();

    final feature = context.read<CronFeature>();
    final state = feature.state;
    if (_controller.text != state.input) {
      _controller.text = state.input;
    }

    _controller.addListener(_onUpdate);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosTextField(
      controller: _controller,
      minLines: 1,
      maxLines: 1,
      placeholder: t.cron.cronHint,
    );
  }

  void _onUpdate() {
    final text = _controller.text;
    context.read<CronFeature>().accept(CronMessage.inputUpdate(text));
  }

  void _onPartSelectionChanged(List<CronPart> parts) {
    SharedAppData.setValue(
      context,
      'cron/selected/parts',
      parts,
    );
  }
}

class _HumanReadCron extends StatelessWidget {
  const _HumanReadCron();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<CronFeature, CronState>(
      buildWhen: (prev, curr) => prev.cron != curr.cron,
      builder: (context, state) {
        final cron = state.cron;

        if (cron == null) {
          return const SizedBox();
        }

        return Text.rich(cron.formatTextSpan(context));
      },
    );
  }
}

class _NextAt extends StatelessWidget {
  const _NextAt();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<CronFeature, CronState>(
      buildWhen: (prev, curr) => prev.cron != curr.cron,
      builder: (context, state) {
        final cron = state.cron;

        if (cron == null) {
          return const SizedBox();
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 130,
              child: Text(t.cron.nextAt),
            ),
            const Expanded(child: _NextAtList()),
          ],
        );
      },
    );
  }
}

class _NextAtList extends StatelessWidget {
  const _NextAtList();

  @override
  Widget build(BuildContext context) {
    final timezone = TimezoneHolder.of(context);

    return FeatureBuilder<CronFeature, CronState>(
      builder: (context, state) {
        final cron = state.cron;

        if (cron == null) {
          return const SizedBox();
        }

        final now = DatetimeHolder.of(context, type: DatetimeHolderType.min);

        final nexts = <TZDateTime>[];
        for (int i = 0; i < 5; i++) {
          final prev = nexts.isNotEmpty && nexts.length >= i
              ? nexts[i - 1]
              : TZDateTime.from(now, timezone);
          final next = TZDateTime.from(cron.nextRun(prev), timezone);
          nexts.add(next);
        }

        return DefaultTextStyle.merge(
          style: const TextStyle(fontFamily: 'Fira Code'),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final next in nexts)
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      showDatetimeConverterSheet(
                        context: context,
                        datetime: next,
                      );
                    },
                    child: Text(
                      next.toRfc2822String(),
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

extension on CronException {
  String format(Translations t) {
    final err = this;
    return switch (err) {
      EmptyCronException() => t.cron.errors.empty,
      CustomCronException() => t.cron.errors.custom,
      InvalidValueException() => t.cron.errors.invalidValue(
          from: err.part.minValue,
          to: err.part.maxValue,
          value: err.value,
        ),
      InvalidRangeLengthException() => t.cron.errors.rangeLength,
      InvalidRangeException() => t.cron.errors.range(
          from: err.from,
          to: err.to,
        ),
      InvalidStepLengthException() => t.cron.errors.stepLength,
      InvalidStepException() => t.cron.errors.invalidStep(
          to: err.part.maxValue,
          value: err.step,
        ),
      InvalidCronPartException() => err.format(t),
    };
  }
}

extension on InvalidCronPartException {
  String format(Translations t) {
    final buffer = StringBuffer();

    final minutes = this.minutes;
    if (minutes != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(minutes.format(t));
    }

    final hours = this.hours;
    if (hours != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(hours.format(t));
    }

    final daysOfMonth = this.daysOfMonth;
    if (daysOfMonth != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(daysOfMonth.format(t));
    }

    final months = this.months;
    if (months != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(months.format(t));
    }

    final daysOfWeek = this.daysOfWeek;
    if (daysOfWeek != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(daysOfWeek.format(t));
    }

    return buffer.toString();
  }
}

class _CronTextEditingController extends TextEditingController {
  final ValueChanged<List<CronPart>> onPartSelectionChanged;

  _CronTextEditingController({
    required this.onPartSelectionChanged,
  });

  @override
  set selection(TextSelection newSelection) {
    super.selection = newSelection;

    final text = this.text;
    final trimmedText = text.trim();
    if (trimmedText.isEmpty) {
      onPartSelectionChanged(const []);
      return;
    }

    final startOffset = text.indexOf(trimmedText);
    if (startOffset == -1) {
      onPartSelectionChanged(const []);
      return;
    }

    final regex = RegExp(r'\S+');
    final matches = regex.allMatches(trimmedText);

    final tokens = <TokenInfo>[];
    for (final match in matches) {
      final tokenStart = startOffset + match.start;
      final tokenEnd = startOffset + match.end;
      tokens.add(TokenInfo(tokenStart, tokenEnd));
    }

    final selectedParts = <CronPart>[];
    for (int i = 0; i < CronPart.values.length; i++) {
      if (i >= tokens.length) {
        break;
      }

      final token = tokens[i];
      final selectionStart = selection.start;
      final selectionEnd = selection.end;

      final overlaps =
          selectionStart <= token.end && selectionEnd >= token.start;
      if (overlaps) {
        selectedParts.add(CronPart.values[i]);
      }
    }

    onPartSelectionChanged(selectedParts);
  }
}

class TokenInfo {
  final int start;
  final int end;

  TokenInfo(this.start, this.end);
}
