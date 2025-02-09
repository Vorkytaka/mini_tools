import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../common/datetime.dart';
import '../../common/padding.dart';
import '../../i18n/strings.g.dart';
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
          const SizedBox(height: 8),
          const Padding(
            padding: headlinePadding,
            child: _NextAt(),
          ),
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

        return Text.rich(
          TextSpan(
            children: [
              TextSpan(text: part.format(t)),
              const TextSpan(text: '  '),
              TextSpan(
                text: text,
                style: TextStyle(
                  fontFamily: 'Fira Code',
                  color: textColor,
                ),
              ),
            ],
          ),
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
  final _controller = TextEditingController();

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

        return Text(cron.format(context));
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
            Text(t.cron.nextAt),
            const SizedBox(width: 8),
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
    return FeatureBuilder<CronFeature, CronState>(
      builder: (context, state) {
        final cron = state.cron;

        if (cron == null) {
          return const SizedBox();
        }

        final nexts = <DateTime>[];
        for (int i = 0; i < 5; i++) {
          final prev = nexts.isNotEmpty && nexts.length >= i
              ? nexts[i - 1]
              : DateTime.now();
          final next = cron.nextRun(prev);
          nexts.add(next);
        }

        return DefaultTextStyle.merge(
          style: const TextStyle(fontFamily: 'Fira Code'),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final next in nexts) Text(next.toRfc2822String()),
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
