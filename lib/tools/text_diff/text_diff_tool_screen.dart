import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/json.dart';

import '../../common/code_themes.dart';
import '../../common/macos_code_editor.dart';
import '../../common/padding.dart';
import '../../common/text_styles.dart';
import '../../i18n/strings.g.dart';
import 'feature/text_diff_feature.dart';

class TextDiffScreen extends StatelessWidget {
  const TextDiffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        centerTitle: true,
        title: Text(t.textDiff.title),
      ),
      children: [
        ContentArea(
          builder: (context, _) => const Padding(
            padding: panePadding,
            child: _Body(),
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding.copyWith(
            bottom: 8,
          ),
          child: Row(
            children: [
              FeatureBuilder<TextDiffFeature, TextDiffState>(
                buildWhen: (prev, curr) => prev.diffCount != curr.diffCount,
                builder: (context, state) {
                  return Text('${state.diffCount} differences');
                },
              ),
            ],
          ),
        ),
        const Expanded(child: _Inputs()),
      ],
    );
  }
}

class _Inputs extends StatefulWidget {
  const _Inputs();

  @override
  State<_Inputs> createState() => _InputsState();
}

class _InputsState extends State<_Inputs> {
  late final _oldTextCodeController =
      CodeLineEditingController(spanBuilder: _oldSpanBuilder);
  late final _newTextCodeController =
      CodeLineEditingController(spanBuilder: _newSpanBuilder);

  final _vScrollControllers = LinkedScrollControllerGroup();
  final _hScrollControllers = LinkedScrollControllerGroup();
  late final CodeScrollController? _newScrollController;
  late final CodeScrollController? _oldScrollController;

  @override
  void initState() {
    super.initState();

    _newScrollController = CodeScrollController(
      horizontalScroller: _hScrollControllers.addAndGet(),
      verticalScroller: _vScrollControllers.addAndGet(),
    );
    _oldScrollController = CodeScrollController(
      horizontalScroller: _hScrollControllers.addAndGet(),
      verticalScroller: _vScrollControllers.addAndGet(),
    );

    final feature = context.read<TextDiffFeature>();
    final state = feature.state;

    _oldTextCodeController.text = state.oldText;

    _newTextCodeController.text = state.newText;

    _newTextCodeController.addListener(() {
      context
          .read<TextDiffFeature>()
          .accept(TextDiffMessage.updateNewText(_newTextCodeController.text));
    });

    _oldTextCodeController.addListener(() {
      context
          .read<TextDiffFeature>()
          .accept(TextDiffMessage.updateOldText(_oldTextCodeController.text));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    context.watch<TextDiffFeature>();
    _oldTextCodeController.forceRepaint();
    _newTextCodeController.forceRepaint();
  }

  @override
  void dispose() {
    _newTextCodeController.dispose();
    _oldTextCodeController.dispose();

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
            textController: _oldTextCodeController,
            title: Text(t.textDiff.oldInput),
            scrollController: _oldScrollController,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _InputHalf(
            textController: _newTextCodeController,
            title: Text(t.textDiff.newInput),
            scrollController: _newScrollController,
          ),
        ),
      ],
    );
  }

  TextSpan _oldSpanBuilder({
    required BuildContext context,
    required int index,
    required CodeLine codeLine,
    required TextSpan textSpan,
    required TextStyle style,
  }) {
    final feature = context.read<TextDiffFeature>();
    final state = feature.state;
    final lines = state.oldDiffLines;
    final diffLine = lines.elementAtOrNull(index);
    if (diffLine != null) {
      return TextSpan(
        style: textSpan.style,
        children: diffLine
            .map(
              (diff) => TextSpan(
                text: diff.text,
                style: textSpan.style?.copyWith(
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

    return textSpan;
  }

  TextSpan _newSpanBuilder({
    required BuildContext context,
    required int index,
    required CodeLine codeLine,
    required TextSpan textSpan,
    required TextStyle style,
  }) {
    final feature = context.read<TextDiffFeature>();
    final state = feature.state;
    final lines = state.newDiffLines;
    final diffLine = lines.elementAtOrNull(index);
    if (diffLine != null) {
      return TextSpan(
        style: style,
        children: diffLine
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

    return textSpan;
  }
}

class _InputHalf extends StatelessWidget {
  final CodeLineEditingController textController;
  final CodeScrollController? scrollController;
  final Widget title;

  const _InputHalf({
    required this.textController,
    required this.title,
    this.scrollController,
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
          child: MacosCodeEditor(
            scrollController: scrollController,
            indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
            style: MacosCodeEditor.defaultStyle(context,
                codeTheme: CodeHighlightTheme(
                  languages: {'json': CodeHighlightThemeMode(mode: langJson)},
                  theme: CodeThemes.monokai(TextStyles.firaCode),
                )),
            controller: textController,
          ),
        ),
      ],
    );
  }
}
