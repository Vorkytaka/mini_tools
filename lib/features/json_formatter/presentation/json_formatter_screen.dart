import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/json.dart';

import '../../../common/code_themes.dart';
import '../../../common/macos_code_editor.dart';
import '../../../common/padding.dart';
import '../../../common/text_styles.dart';
import '../../../i18n/strings.g.dart';
import '../domain/json_feature.dart';
import '../domain/state/json_formatter_state.dart';

part 'json_formatter_extensions.dart';

part 'json_formatter_input_side.dart';

part 'json_formatter_output_side.dart';

class JsonFormatterScreen extends StatelessWidget {
  const JsonFormatterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(title: Text(t.jsonFormatter.title), centerTitle: true),
      children: [ContentArea(builder: (context, controller) => const _Body())],
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
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

    final feature = context.watch<JsonFormatterFeature>();
    final output = feature.state.output ?? '';
    if (_outputController.text != output) {
      _outputController.text = output;
    }
    if (_inputController.text != feature.state.input) {
      _inputController.text = feature.state.input;
    }
    if (_jsonPathController.text != feature.state.jsonPath.input) {
      _jsonPathController.text = feature.state.jsonPath.input;
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
    return Padding(
      padding: panePadding,
      child: Row(
        children: [
          Expanded(child: _InputSide(controller: _inputController)),
          const SizedBox(width: 8),
          Expanded(
            child: _OutputSide(
              outputController: _outputController,
              jsonPathController: _jsonPathController,
            ),
          ),
        ],
      ),
    );
  }

  void _onInputUpdate() {
    final text = _inputController.text;
    context.read<JsonFormatterFeature>().accept(InputUpdateMessage(text));
  }

  void _onJsonPathUpdate() {
    final jsonPath = _jsonPathController.text;
    context.read<JsonFormatterFeature>().accept(
      JsonPathUpdateMessage(jsonPath),
    );
  }
}
