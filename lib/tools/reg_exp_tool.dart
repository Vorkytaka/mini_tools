import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

import 'tools.dart';

final regExpTool = Tool(
  title: 'RegExp tool',
  icon: Icons.manage_search,
  screenBuilder: (context) => const RegExpTool(),
);

class RegExpTool extends StatelessWidget {
  const RegExpTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('RegExp tool'),
        centerTitle: true,
      ),
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
  final _inputController = TextEditingController();
  final _exampleController = _RegExpTextEditingController();

  RegExp? _regExp;
  Iterable<RegExpMatch>? _searchResults;

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputUpdate);
    _exampleController.addListener(_search);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MacosTextField(
          controller: _inputController,
        ),
        MacosTextField(
          controller: _exampleController,
          maxLines: 10,
        ),
      ],
    );
  }

  void _onInputUpdate() {
    final text = _inputController.text;

    try {
      _regExp = RegExp(text);
    } on FormatException catch (_) {
      _regExp = null;
    }

    _search();
    setState(() {});
  }

  void _search() {
    final regExp = _regExp;

    if (regExp == null) {
      _searchResults = null;
      return;
    }

    final text = _exampleController.text;
    _searchResults = regExp.allMatches(text);
    _exampleController.matches = _searchResults;
    setState(() {});
  }
}

class _RegExpTextEditingController extends TextEditingController {
  Iterable<RegExpMatch>? matches;

  _RegExpTextEditingController();

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final matches = this.matches;
    if (matches == null || matches.isEmpty) {
      return super.buildTextSpan(
          context: context, style: style, withComposing: withComposing);
    }

    final matchesIterator = matches.iterator;
    matchesIterator.moveNext();

    final length = text.length;
    int lastStart = 0;
    final spans = <InlineSpan>[];
    do {
      final match = matchesIterator.current;

      final simpleText = text.substring(lastStart, match.start);
      if (simpleText.isNotEmpty) {
        spans.add(TextSpan(
          text: simpleText,
          style: style,
        ));
      }

      final matchText = text.substring(match.start, match.end);
      if (matchText.isNotEmpty) {
        spans.add(TextSpan(
          text: matchText,
          style: style?.copyWith(backgroundColor: Colors.green),
        ));
      }

      lastStart = match.end;
    } while (lastStart < length && matchesIterator.moveNext());

    if (lastStart < length) {
      spans.add(TextSpan(
        text: text.substring(lastStart),
        style: style,
      ));
    }

    return TextSpan(children: spans);
  }
}
