import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/json.dart';

import '../../common/code_themes.dart';
import '../../common/macos_code_editor.dart';
import '../../common/text_styles.dart';
import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'feature/json_feature.dart';
import 'json_feature_utils.dart';

final jsonFormatterTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).jsonFormatter.title,
  icon: Icons.data_object,
  screenBuilder: (context) => const JsonFormatter(),
  feature: jsonFeatureFactory()..init(),
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

extension on JsonOutputFormat {
  String format(BuildContext context) {
    final t = Translations.of(context);

    switch (this) {
      case JsonOutputFormat.min:
        return t.jsonFormatter.jsonFormat.min;
      case JsonOutputFormat.two:
        return t.jsonFormatter.jsonFormat.two;
      case JsonOutputFormat.four:
        return t.jsonFormatter.jsonFormat.four;
      case JsonOutputFormat.tab:
        return t.jsonFormatter.jsonFormat.tab;
    }
  }
}

class _BodyState extends State<_Body> {
  final _inputController = CodeLineEditingController();
  final _outputController = CodeLineEditingController();
  final _jsonPathController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputUpdate);
    _jsonPathController.addListener(_onJsonPathUpdate);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.jsonFeature(context, listen: true);
    if (_outputController.text != feature.state.output) {
      _outputController.text = feature.state.output;
    }
    if (_inputController.text != feature.state.input) {
      _inputController.text = feature.state.input;
    }
    if (_jsonPathController.text != feature.state.jsonPathInput) {
      _jsonPathController.text = feature.state.jsonPathInput;
    }
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
                      JsonFeatureBuilder(
                        buildWhen: (prev, curr) => prev.format != curr.format,
                        builder: (context, state) {
                          return MacosPopupButton(
                            value: state.format,
                            items: JsonOutputFormat.values
                                .map(
                                  (type) => MacosPopupMenuItem(
                                    value: type,
                                    child: Text(type.format(context)),
                                  ),
                                )
                                .toList(growable: false),
                            onChanged: (format) {
                              if (format != null) {
                                context
                                    .jsonFeature(context)
                                    .accept(FormatUpdateEvent(format));
                              }
                            },
                          );
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
    context.jsonFeature(context).accept(InputUpdateEvent(text));
  }

  void _onJsonPathUpdate() {
    final jsonPath = _jsonPathController.text;
    context.jsonFeature(context).accept(JsonPathUpdateEvent(jsonPath));
  }
}
