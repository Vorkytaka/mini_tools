import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:diff_match_patch/src/diff.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

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
  final _diffMatchPatch = DiffMatchPatch();

  @override
  void initState() {
    super.initState();

    _oldTextController.addListener(_onUpdate);
    _newTextController.addListener(_onUpdate);
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

  void _onUpdate() {
    final oldText = _oldTextController.text;
    final newText = _newTextController.text;

    // _diffMatchPatch.patchMargin = 0;
    _diffMatchPatch.matchThreshold = 0;

    final diffs = _diffMatchPatch.diff(oldText, newText);
    cleanupSemanticLossless(diffs);
    // _diffMatchPatch.diffCleanupSemantic(diffs);
    // _diffMatchPatch.diffCleanupEfficiency(diffs);
    final appendDiffs = diffs
        .where((diff) => diff.operation != DIFF_DELETE)
        .toList(growable: false);
    final deleteDiffs = diffs
        .where((diff) => diff.operation != DIFF_INSERT)
        .toList(growable: false);

    _oldTextController.setDiffs(deleteDiffs);
    _newTextController.setDiffs(appendDiffs);
  }
}

class DiffTextEditorController extends TextEditingController {
  List<Diff>? _diffs;

  void setDiffs(List<Diff>? diffs) {
    _diffs = diffs;
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final diffs = _diffs;
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
