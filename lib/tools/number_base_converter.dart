import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';

import '../i18n/strings.g.dart';
import 'tools.dart';

final numberBaseConverterTool = Tool(
  title: 'Number base converter',
  icon: Icons.numbers,
  screenBuilder: (context) => const NumberBaseConverter(),
);

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
    final integer = int.tryParse(value, radix: 2);
    _updateValues(value: integer, updateBase2: false);
  }

  void _base8Changed(String value) {
    final integer = int.tryParse(value, radix: 8);
    _updateValues(value: integer, updateBase8: false);
  }

  void _base10Changed(String value) {
    final integer = int.tryParse(value, radix: 10);
    _updateValues(value: integer, updateBase10: false);
  }

  void _base16Changed(String value) {
    final integer = int.tryParse(value, radix: 16);
    _updateValues(value: integer, updateBase16: false);
  }

  void _updateValues({
    required int? value,
    bool updateBase2 = true,
    bool updateBase8 = true,
    bool updateBase10 = true,
    bool updateBase16 = true,
  }) {
    if (updateBase2) {
      _base2Controller.text = value?.toRadixString(2) ?? '';
    }
    if (updateBase8) {
      _base8Controller.text = value?.toRadixString(8) ?? '';
    }
    if (updateBase10) {
      _base10Controller.text = value?.toRadixString(10) ?? '';
    }
    if (updateBase16) {
      _base16Controller.text = value?.toRadixString(16) ?? '';
    }
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
