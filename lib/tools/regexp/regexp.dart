// ignore_for_file: always_put_required_named_parameters_first

import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import 'feature/regexp_feature.dart';

class RegExpTool extends StatelessWidget {
  const RegExpTool({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.regexp.title),
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
  final _regExpController = TextEditingController();
  final _testStringController = _RegExpExampleTextEditingController();

  @override
  void initState() {
    super.initState();

    _regExpController.addListener(_regExpUpdate);
    _testStringController.addListener(_exampleUpdate);

    final cubit = context.read<RegExpFeature>();
    final state = cubit.state;
    _regExpController.text = state.input;
    _testStringController.text = state.testString;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final cubit = context.watch<RegExpFeature>();
    final state = cubit.state;
    _testStringController.matches = state.matches;
  }

  @override
  void dispose() {
    _regExpController.dispose();
    _testStringController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MacosTextField(
                controller: _regExpController,
                placeholder: t.regexp.regexpHint,
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(t.regexp.testStringTitle),
                    const _MatchCounter(),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: MacosTextField(
                  controller: _testStringController,
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
              Text(t.regexp.matchInfoTitle),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  controller: controller,
                  child: const _MatchInformation(),
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

  void _regExpUpdate() => context
      .read<RegExpFeature>()
      .accept(RegExpMessage.updateInput(_regExpController.text));

  void _exampleUpdate() => context
      .read<RegExpFeature>()
      .accept(RegExpMessage.updateTestString(_testStringController.text));
}

class _MatchInformation extends StatelessWidget {
  const _MatchInformation();

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.matches != curr.matches,
      builder: (context, state) {
        final matches = state.matches;

        const cellPadding = EdgeInsets.all(8);
        // This variable mutate later
        // We use this to not cast [matches] to List
        int matchCounter = 0;

        TableRow? result;
        if (matches == null || matches.isEmpty) {
          result = TableRow(
            children: [
              const TableCell(
                child: Padding(
                  padding: cellPadding,
                  child: Text(' '),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: cellPadding,
                  child: Text(t.regexp.matchInfoNothing),
                ),
              ),
              const TableCell(
                child: Padding(
                  padding: cellPadding,
                  child: Text(' '),
                ),
              ),
            ],
          );
        } else {}

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
                      child: Text(t.regexp.matchInfoNumber),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: cellPadding,
                    child: DefaultTextStyle.merge(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      child: Text(t.regexp.matchInfoValue),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: cellPadding,
                    child: DefaultTextStyle.merge(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      child: Text(t.regexp.matchInfoPosition),
                    ),
                  ),
                ),
              ],
            ),
            if (result != null) result,
            if (matches != null)
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
                        child: SelectableText(match.group(0)!),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: cellPadding,
                        child: Text('${match.start}-${match.end}'),
                      ),
                    ),
                  ],
                ),
          ],
        );
      },
    );
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

class _MatchCounter extends StatelessWidget {
  const _MatchCounter();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.matches?.length != curr.matches?.length,
      builder: (context, state) {
        final count = state.matches?.length ?? 0;
        return Text(t.regexp.matchesCount(n: count, count: count));
      },
    );
  }
}
