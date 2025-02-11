import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:provider/provider.dart';

import 'feature/text_diff_feature.dart';

class TextDiffScreen extends StatelessWidget {
  const TextDiffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, _) => const _Body(),
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
  final _oldTextController = DiffTextEditorController();
  final _newTextController = DiffTextEditorController();

  @override
  void initState() {
    super.initState();

    final feature = context.read<TextDiffFeature>();
    final state = feature.state;
    _newTextController.text = state.newText;
    _oldTextController.text = state.oldText;

    _newTextController.addListener(() {
      context
          .read<TextDiffFeature>()
          .accept(TextDiffMessage.updateNewText(_newTextController.text));
    });

    _oldTextController.addListener(() {
      context
          .read<TextDiffFeature>()
          .accept(TextDiffMessage.updateOldText(_oldTextController.text));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = context.watch<TextDiffFeature>();
    final state = feature.state;
    if (_newTextController.diffs != state.newDiffs ||
        _oldTextController.diffs != state.oldDiffs) {
      _newTextController.diffs = state.newDiffs;
      _oldTextController.diffs = state.oldDiffs;
    }
  }

  @override
  void dispose() {
    _newTextController.dispose();
    _oldTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: MacosTextField(
              textAlignVertical: const TextAlignVertical(y: -1),
              minLines: null,
              maxLines: null,
              controller: _oldTextController,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: MacosTextField(
              textAlignVertical: const TextAlignVertical(y: -1),
              minLines: null,
              maxLines: null,
              controller: _newTextController,
            ),
          ),
        ),
      ],
    );
  }
}

class DiffTextEditorController extends TextEditingController {
  List<Diff>? diffs;

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final diffs = this.diffs;
    if (diffs != null) {
      return TextSpan(
        children: diffs
            .map(
              (diff) => TextSpan(
                text: diff.text,
                style: TextStyle(
                  backgroundColor: switch (diff.operation) {
                    DIFF_DELETE => Colors.red,
                    DIFF_INSERT => Colors.green,
                    _ => null,
                  },
                ),
              ),
            )
            .toList(growable: false),
      );
    }

    return super.buildTextSpan(
      context: context,
      style: style,
      withComposing: withComposing,
    );
  }
}
