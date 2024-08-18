// ignore_for_file: always_put_required_named_parameters_first

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
  final _inputController = _RegExpTextEditingController();
  final _exampleController = _RegExpExampleTextEditingController();

  Iterable<RegExpMatch>? _searchResults;

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_search);
    _exampleController.addListener(_search);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final matchesCount = _searchResults?.length ?? 0;

    return Column(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MacosTextField(
                controller: _inputController,
                placeholder: 'RegExp',
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Test string: '),
                    Text('Matches count: $matchesCount'),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: MacosTextField(
                  controller: _exampleController,
                  textAlignVertical: const TextAlignVertical(y: -1),
                  maxLines: 10,
                ),
              ),
            ],
          ),
        ),
        ResizablePane(
          builder: (context, controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Match information: '),
              const SizedBox(height: 8),
              if (_searchResults != null)
                Expanded(
                  child: SingleChildScrollView(
                    controller: controller,
                    child: _MatchInformation(
                      matches: _searchResults!,
                    ),
                  ),
                ),
            ],
          ),
          minSize: 100,
          maxSize: 300,
          resizableSide: ResizableSide.top,
          startSize: 100,
        ),
      ],
    );
  }

  void _search() {
    final regExp = _inputController.regExp;
    if (regExp == null) {
      _searchResults = null;
      setState(() {});
      return;
    }

    final text = _exampleController.text;
    _searchResults = regExp.allMatches(text);
    _exampleController.matches = _searchResults;
    setState(() {});
  }
}

class _MatchInformation extends StatelessWidget {
  final Iterable<RegExpMatch> matches;

  const _MatchInformation({
    required this.matches,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    const cellPadding = EdgeInsets.all(8);
    // This variable mutate later
    // We use this to not cast [matches] to List
    int matchCounter = 0;

    TableRow? noMatchFound;
    if (matches.isEmpty) {
      noMatchFound = const TableRow(
        children: [
          TableCell(child: Padding(padding: cellPadding, child: Text('–'))),
          TableCell(
              child:
                  Padding(padding: cellPadding, child: Text('Nothing found'))),
          TableCell(child: Padding(padding: cellPadding, child: Text('–'))),
        ],
      );
    }

    return Table(
      defaultColumnWidth: const IntrinsicColumnWidth(),
      border: TableBorder.all(
        color: theme.dividerColor,
      ),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: cellPadding,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  child: const Text('#'),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: cellPadding,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  child: const Text('Match'),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: cellPadding,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  child: const Text('Position'),
                ),
              ),
            ),
          ],
        ),
        if (noMatchFound != null) noMatchFound,
        for (final match in matches)
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: cellPadding,
                  child: Text('${matchCounter++}'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: cellPadding,
                  child: Text(match.group(0)!),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: cellPadding,
                  child: Text('${match.start}'),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class _RegExpTextEditingController extends TextEditingController {
  RegExp? _regExp;

  RegExp? get regExp => _regExp;

  @override
  set value(TextEditingValue newValue) {
    try {
      _regExp = RegExp(newValue.text);
    } on FormatException catch (_) {
      _regExp = null;
    }

    super.value = newValue;
  }
}

class _RegExpExampleTextEditingController extends TextEditingController {
  Iterable<RegExpMatch>? matches;

  _RegExpExampleTextEditingController();

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
          style: style?.copyWith(
            color: Colors.black,
            backgroundColor: Colors.green,
          ),
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
