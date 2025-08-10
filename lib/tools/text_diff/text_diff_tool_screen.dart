import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:provider/provider.dart';

import '../../common/padding.dart';
import '../../i18n/strings.g.dart';
import 'feature/text_diff_feature.dart';

class TextDiffScreen extends StatelessWidget {
  const TextDiffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(centerTitle: true, title: Text(t.textDiff.title)),
      children: [
        ContentArea(
          builder:
              (context, _) =>
                  const Padding(padding: panePadding, child: _Body()),
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

  final _scrollControllers = LinkedScrollControllerGroup();
  late final ScrollController? _newScrollController;
  late final ScrollController? _oldScrollController;

  @override
  void initState() {
    super.initState();

    _newScrollController = _scrollControllers.addAndGet();
    _oldScrollController = _scrollControllers.addAndGet();

    final feature = context.read<TextDiffFeature>();
    final state = feature.state;
    _newTextController.text = state.newText;
    _oldTextController.text = state.oldText;

    _newTextController.addListener(() {
      context.read<TextDiffFeature>().accept(
        TextDiffMessage.updateNewText(_newTextController.text),
      );
    });

    _oldTextController.addListener(() {
      context.read<TextDiffFeature>().accept(
        TextDiffMessage.updateOldText(_oldTextController.text),
      );
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

    _newScrollController?.dispose();
    _oldScrollController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: _InputHalf(
            textController: _oldTextController,
            scrollController: _oldScrollController,
            title: Text(t.textDiff.oldInput),
          ),
        ),
        Expanded(
          child: _InputHalf(
            textController: _newTextController,
            scrollController: _newScrollController,
            title: Text(t.textDiff.newInput),
          ),
        ),
      ],
    );
  }
}

class _InputHalf extends StatelessWidget {
  final TextEditingController textController;
  final ScrollController? scrollController;
  final Widget title;

  const _InputHalf({
    required this.textController,
    required this.scrollController,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              title,
              const SizedBox(width: 8),
              PushButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: textController.text));
                },
                controlSize: ControlSize.regular,
                child: Text(t.common.copy),
              ),
              const SizedBox(width: 8),
              PushButton(
                controlSize: ControlSize.regular,
                secondary: true,
                onPressed: () {
                  textController.text = '';
                },
                child: Text(t.common.clear),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: MacosTextField(
            scrollController: scrollController,
            textAlignVertical: const TextAlignVertical(y: -1),
            minLines: null,
            maxLines: null,
            controller: textController,
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
    required bool withComposing,
    TextStyle? style,
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
