import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:provider/provider.dart';

import 'feature/cron_feature.dart';

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
    return Column(
      children: [
        _CronInput(),
      ],
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
