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
        ResizablePane(
          builder: (context, controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(t.regexp.matchInfoTitle),
              const SizedBox(height: 8),
              const Expanded(child: _MatchInformation()),
            ],
          ),
          minSize: 300,
          maxSize: 400,
          resizableSide: ResizableSide.left,
          startSize: 300,
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

        if (matches == null || matches.isEmpty) {
          return Text('No matches found');
        }

        return ListView.builder(
          itemCount: matches.length,
          itemBuilder: (context, i) => _MatchWidget(
            position: i + 1,
            match: matches[i],
          ),
        );
      },
    );
  }
}

class _MatchWidget extends StatelessWidget {
  final int position;
  final RegExpMatch match;

  const _MatchWidget({
    required this.position,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Match #$position'),
        const SizedBox(width: 8),
        Text('${match.start}-${match.end}'),
        const Spacer(),
        Text(match.group(0)!),
      ],
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
