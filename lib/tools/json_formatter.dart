import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_path/json_path.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/json.dart';

import '../common/code_themes.dart';
import '../common/macos_code_editor.dart';
import '../common/text_styles.dart';
import '../i18n/strings.g.dart';
import 'tools.dart';

final jsonFormatterTool = BaseTool(
  titleBuilder: (context) => Translations.of(context).jsonFormatter.title,
  icon: Icons.data_object,
  screenBuilder: (context) => const JsonFormatter(),
);

class JsonFormatter extends StatelessWidget {
  const JsonFormatter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.jsonFormatter.title),
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
    final t = Translations.of(context);

    switch (this) {
      case _JsonFormat.min:
        return t.jsonFormatter.jsonFormat.min;
      case _JsonFormat.two:
        return t.jsonFormatter.jsonFormat.two;
      case _JsonFormat.four:
        return t.jsonFormatter.jsonFormat.four;
      case _JsonFormat.tab:
        return t.jsonFormatter.jsonFormat.tab;
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
  final _inputController = CodeLineEditingController();
  final _outputController = CodeLineEditingController();
  final _jsonPathController = TextEditingController();

  Object? _json;
  JsonPath? _jsonPath;

  _JsonFormat _format = _JsonFormat.two;
  JsonEncoder _formatter = _JsonFormat.two.encoder;

  Timer? _jsonPathDebouncer;

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputUpdate);
    _jsonPathController.addListener(_onJsonPathUpdate);
  }

  @override
  void dispose() {
    _inputController.dispose();
    _outputController.dispose();
    _jsonPathController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: MacosCodeEditor(
                controller: _inputController,
                style: MacosCodeEditor.defaultStyle(
                  context,
                  codeTheme: CodeHighlightTheme(
                    languages: {'json': CodeHighlightThemeMode(mode: langJson)},
                    theme: CodeThemes.monokai(TextStyles.firaCode),
                  ),
                ),
                indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(t.common.output)),
                      PushButton(
                        controlSize: ControlSize.regular,
                        secondary: true,
                        onPressed: () {
                          final text = _outputController.text;
                          if (text.isNotEmpty) {
                            Clipboard.setData(ClipboardData(text: text));
                          }
                        },
                        child: Text(t.common.copy),
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
                  child: MacosCodeEditor(
                    controller: _outputController,
                    readOnly: true,
                    style: MacosCodeEditor.defaultStyle(
                      context,
                      codeTheme: CodeHighlightTheme(
                        languages: {
                          'json': CodeHighlightThemeMode(mode: langJson)
                        },
                        theme: CodeThemes.monokai(TextStyles.firaCode),
                      ),
                    ),
                    indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
                  ),
                ),
                const SizedBox(height: 8),
                MacosTextField(
                  controller: _jsonPathController,
                  placeholder: t.jsonFormatter.jsonPathHint,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  void _onInputUpdate() {
    final text = _inputController.text;

    try {
      _json = jsonDecode(text);
    } on FormatException catch (_) {
      _json = null;
    }

    _updateOutput();
  }

  void _onJsonPathUpdate() {
    final debouncer = _jsonPathDebouncer;
    if (debouncer != null && debouncer.isActive) {
      debouncer.cancel();
    }
    _jsonPathDebouncer = Timer(const Duration(milliseconds: 700), () {
      final text = _jsonPathController.text;

      try {
        _jsonPath = JsonPath(text);
      } on FormatException catch (_) {
        _jsonPath = null;
      }

      _updateOutput();
    });
  }

  void _updateOutput() {
    Object? json = _json;
    final path = _jsonPath;

    if (json == null) {
      _outputController.text = '';
      return;
    }

    if (path != null) {
      json = [...path.read(json).map((e) => e.value)];
    }

    final outputJson = _formatter.convert(json);
    _outputController.text = outputJson;
  }
}
