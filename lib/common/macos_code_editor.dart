import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:re_editor/re_editor.dart';

class MacosCodeEditor extends StatefulWidget {
  final CodeLineEditingController? controller;
  final CodeScrollController? scrollController;
  final CodeFindController? findController;
  final SelectionToolbarController? toolbarController;
  final ValueChanged<CodeLineEditingValue>? onChanged;
  final CodeEditorStyle? style;
  final String? hint;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final CodeIndicatorBuilder? indicatorBuilder;
  final CodeScrollbarBuilder? scrollbarBuilder;
  final CodeFindBuilder? findBuilder;
  final CodeShortcutsActivatorsBuilder? shortcutsActivatorsBuilder;
  final Map<Type, Action<Intent>>? shortcutOverrideActions;
  final Widget? sperator;
  final Border? border;
  final bool? readOnly;
  final bool? showCursorWhenReadOnly;
  final bool? wordWrap;
  final bool? autofocus;
  final FocusNode? focusNode;
  final CodeChunkAnalyzer? chunkAnalyzer;
  final CodeCommentFormatter? commentFormatter;

  const MacosCodeEditor({
    this.controller,
    this.scrollController,
    this.findController,
    this.toolbarController,
    this.onChanged,
    this.style,
    this.hint,
    this.padding,
    this.margin,
    this.indicatorBuilder,
    this.scrollbarBuilder,
    this.findBuilder,
    this.shortcutsActivatorsBuilder,
    this.shortcutOverrideActions,
    this.sperator,
    this.border,
    this.readOnly,
    this.showCursorWhenReadOnly,
    this.wordWrap,
    this.autofocus,
    this.focusNode,
    this.chunkAnalyzer,
    this.commentFormatter,
    super.key,
  });

  static Widget defaultIndicatorBuilder(
    BuildContext context,
    CodeLineEditingController editingController,
    CodeChunkController chunkController,
    CodeIndicatorValueNotifier notifier,
  ) {
    final theme = MacosTheme.of(context);

    return Row(
      children: [
        DefaultCodeLineNumber(
          controller: editingController,
          notifier: notifier,
          textStyle: theme.typography.body.copyWith(color: theme.dividerColor),
          focusedTextStyle: theme.typography.body,
        ),
        DefaultCodeChunkIndicator(
          width: 20,
          controller: chunkController,
          notifier: notifier,
          painter: DefaultCodeChunkIndicatorPainter(
            color: theme.dividerColor,
          ),
        )
      ],
    );
  }

  static CodeEditorStyle defaultStyle(
    BuildContext context, {
    required CodeHighlightTheme codeTheme,
  }) {
    return CodeEditorStyle(
      backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      codeTheme: codeTheme,
      cursorWidth: 2,
      cursorColor: MacosColors.white,
      textColor: MacosColors.white,
    );
  }

  @override
  State<MacosCodeEditor> createState() => _MacosCodeEditorState();
}

class _MacosCodeEditorState extends State<MacosCodeEditor> {
  FocusNode? _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode?.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return CodeEditor(
      borderRadius: const BorderRadius.all(Radius.circular(7)),
      controller: widget.controller,
      scrollController: widget.scrollController,
      findController: widget.findController,
      toolbarController: widget.toolbarController,
      onChanged: widget.onChanged,
      style: widget.style,
      hint: widget.hint,
      padding: widget.padding,
      margin: widget.margin,
      indicatorBuilder: widget.indicatorBuilder,
      scrollbarBuilder: widget.scrollbarBuilder,
      findBuilder: widget.findBuilder,
      shortcutsActivatorsBuilder: widget.shortcutsActivatorsBuilder,
      shortcutOverrideActions: widget.shortcutOverrideActions,
      sperator: widget.sperator,
      border: Border.all(
        color: _focusNode!.hasFocus
            ? const Color.fromRGBO(26, 169, 255, 0.3)
            : const Color(0x00000000),
        width: 3,
      ),
      readOnly: widget.readOnly,
      showCursorWhenReadOnly: widget.showCursorWhenReadOnly,
      wordWrap: widget.wordWrap,
      autofocus: widget.autofocus,
      focusNode: _focusNode,
      chunkAnalyzer: widget.chunkAnalyzer,
      commentFormatter: widget.commentFormatter,
    );
  }
}
