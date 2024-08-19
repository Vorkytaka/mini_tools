import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

import '../common/highlight_theme_holder.dart';
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

enum _JsonFormat {
  min,
  two,
  four,
  tab,
}

extension on _JsonFormat {
  String format(BuildContext context) {
    switch (this) {
      case _JsonFormat.min:
        return 'Minify';
      case _JsonFormat.two:
        return '2 spaces';
      case _JsonFormat.four:
        return '4 spaces';
      case _JsonFormat.tab:
        return 'Tab';
    }
  }

  JsonEncoder get encoder {
    switch (this) {
      case _JsonFormat.min:
        return const JsonEncoder();
      case _JsonFormat.two:
        return const JsonEncoder.withIndent('  ');
      case _JsonFormat.four:
        return const JsonEncoder.withIndent('    ');
      case _JsonFormat.tab:
        return const JsonEncoder.withIndent('\t');
    }
  }
}

class _BodyState extends State<_Body> {
  final _inputController = TextEditingController();
  TextEditingController? _outputController;

  _JsonFormat _format = _JsonFormat.two;
  JsonEncoder _formatter = _JsonFormat.two.encoder;

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputUpdate);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_outputController == null) {
      final theme = HighlightThemeHolder.of(context);
      _outputController = _HighlighterTextEditingController(theme: theme);
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    _outputController?.dispose();
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Expanded(child: Text('Output:')),
                    PushButton(
                      controlSize: ControlSize.regular,
                      secondary: true,
                      onPressed: () {
                        final text =_outputController?.text;
                        if(text != null && text.isNotEmpty) {
                          Clipboard.setData(ClipboardData(text: text));
                        }
                      },
                      child: const Text('Copy'),
                    ),
                    const SizedBox(width: 8),
                    MacosPopupButton(
                      value: _format,
                      items: _JsonFormat.values
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
                            _formatter = format.encoder;
                            _onInputUpdate();
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MacosTextField(
                  controller: _outputController,
                  readOnly: true,
                  minLines: null,
                  maxLines: null,
                  textAlignVertical: const TextAlignVertical(y: -1),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _onInputUpdate() {
    final text = _inputController.text;

    Object? json;
    try {
      json = jsonDecode(text);
    } on FormatException catch (_) {
      return;
    }

    final outputJson = _formatter.convert(json);
    _outputController?.text = outputJson;
  }
}

class _HighlighterTextEditingController extends TextEditingController {
  final Highlighter highlighter;
  final HighlighterTheme theme;

  _HighlighterTextEditingController({
    required this.theme,
  }) : highlighter = Highlighter(
          language: 'json',
          theme: theme,
        );

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    return highlighter.highlight(text);
  }
}
