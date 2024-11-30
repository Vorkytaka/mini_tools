import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';

import '../../i18n/strings.g.dart';
import 'feature/number_base_feature.dart';
import 'number_base_feature_utils.dart';

class NumberBaseConverter extends StatelessWidget {
  const NumberBaseConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.numberConverter.title),
        titleWidth: 175,
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => _Body(
            controller: controller,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  final ScrollController? controller;

  const _Body({
    this.controller,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _base2Controller = TextEditingController();
  final _base8Controller = TextEditingController();
  final _base10Controller = TextEditingController();
  final _base16Controller = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.numberBaseFeature(context, listen: true);
    final state = feature.state;

    if (_base2Controller.text != state.base2) {
      _base2Controller.text = state.base2;
    }
    if (_base8Controller.text != state.base8) {
      _base8Controller.text = state.base8;
    }
    if (_base10Controller.text != state.base10) {
      _base10Controller.text = state.base10;
    }
    if (_base16Controller.text != state.base16) {
      _base16Controller.text = state.base16;
    }
  }

  @override
  void dispose() {
    _base2Controller.dispose();
    _base8Controller.dispose();
    _base10Controller.dispose();
    _base16Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return SingleChildScrollView(
      controller: widget.controller,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _Item(
            title: t.numberConverter.binary,
            controller: _base2Controller,
            onChanged: _base2Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: t.numberConverter.octal,
            controller: _base8Controller,
            onChanged: _base8Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: t.numberConverter.decimal,
            controller: _base10Controller,
            onChanged: _base10Changed,
          ),
          const SizedBox(height: 12),
          _Item(
            title: t.numberConverter.hex,
            controller: _base16Controller,
            onChanged: _base16Changed,
          ),
        ],
      ),
    );
  }

  void _base2Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase2Event(value));
  }

  void _base8Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase8Event(value));
  }

  void _base10Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase10Event(value));
  }

  void _base16Changed(String value) {
    context.numberBaseFeature(context).accept(UpdateBase16Event(value));
  }
}

class _Item extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const _Item({
    required this.title,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: MacosTextField(
                controller: controller,
                onChanged: onChanged,
              ),
            ),
            const SizedBox(width: 4),
            MacosIconButton(
              onPressed: () {
                if (controller.text.isEmpty) {
                  return;
                }

                Clipboard.setData(
                  ClipboardData(
                    text: controller.text,
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
}
