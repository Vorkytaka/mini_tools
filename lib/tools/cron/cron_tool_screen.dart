import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../common/datetime.dart';
import '../../common/padding.dart';
import 'cron_format.dart';
import 'feature/cron_feature.dart';
import 'feature/parser/cron_parser.dart';

class CronToolScreen extends StatelessWidget {
  const CronToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        centerTitle: true,
        title: Text('Cron parser'),
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
    return Padding(
      padding: panePadding,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: headlinePadding,
            child: Row(
              children: [
                Text('Input:'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          _CronInput(),
          const SizedBox(height: 16),
          Padding(
            padding: headlinePadding,
            child: _HumanReadCron(),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: headlinePadding,
            child: _NextAt(),
          ),
        ],
      ),
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
    return MacosTextField(
      controller: _controller,
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Next at:'),
        const SizedBox(width: 8),
        Expanded(child: _NextAtList()),
      ],
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

        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final next in nexts) Text(next.toRfc2822String()),
          ],
        );
      },
    );
  }
}
