import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

import 'tools.dart';

final jsonFormatterTool = Tool(
  title: 'JSON Formatter',
  icon: Icons.data_object,
  screenBuilder: (context) => const JsonFormatter(),
);

class JsonFormatter extends StatelessWidget {
  const JsonFormatter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('JSON Formatter'),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => const _Body(),
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _inputController = TextEditingController();
  final _outputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputUpdate);
  }

  @override
  void dispose() {
    _inputController.dispose();
    _outputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: MacosTextField(
              controller: _inputController,
              minLines: null,
              maxLines: null,
              textAlignVertical: const TextAlignVertical(y: -1),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: MacosTextField(
              controller: _outputController,
              readOnly: true,
              minLines: null,
              maxLines: null,
              textAlignVertical: const TextAlignVertical(y: -1),
            ),
          ),
        )
      ],
    );
  }

  final _formatter = const JsonEncoder.withIndent('    ');

  void _onInputUpdate() {
    final text = _inputController.text;

    Object? json;
    try {
      json = jsonDecode(text);
    } on FormatException catch(e) {
      return;
    }

    final outputJson = _formatter.convert(json);
    _outputController.text = outputJson;
  }
}
