// ignore_for_file: always_put_required_named_parameters_first

import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/common/padding.dart';
import '../../../i18n/strings.g.dart';
import '../domain/regexp_feature.dart';

class RegExpToolScreen extends StatelessWidget {
  const RegExpToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(title: Text(t.regexp.title), centerTitle: true),
      children: [
        ContentArea(builder: (context, _) => const _Body()),
        ResizablePane(
          builder:
              (context, controller) => Padding(
                padding: panePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(t.regexp.matchInfoTitle),
                        const _MatchCounter(),
                      ],
                    ),
                    itemSpaceV,
                    const Expanded(child: _MatchInformation()),
                  ],
                ),
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
    final theme = MacosTheme.of(context);

    return Padding(
      padding: panePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: MacosTextField(
                  controller: _regExpController,
                  placeholder: t.regexp.regexpHint,
                  maxLines: 5,
                  minLines: 1,
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(width: 8),
              CustomPopup(
                arrowColor: theme.popupButtonTheme.popupColor,
                backgroundColor: theme.popupButtonTheme.popupColor,
                content: FeatureProvider.value(
                  value: context.read<RegExpFeature>(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _GlobalCheckbox(),
                      Text(
                        t.regexp.settings.globalDesc,
                        style: theme.typography.footnote,
                      ),
                      itemSpaceV,
                      const _MultilineCheckbox(),
                      Text(
                        t.regexp.settings.multilineDesc,
                        style: theme.typography.footnote,
                      ),
                      itemSpaceV,
                      const _CaseSensitiveCheckbox(),
                      Text(
                        t.regexp.settings.caseSensitiveDesc,
                        style: theme.typography.footnote,
                      ),
                      itemSpaceV,
                      const _UnicodeCheckbox(),
                      Text(
                        t.regexp.settings.unicodeDesc,
                        style: theme.typography.footnote,
                      ),
                      itemSpaceV,
                      const _DotAllCheckbox(),
                      Text(
                        t.regexp.settings.dotAllDesk,
                        style: theme.typography.footnote,
                      ),
                    ],
                  ),
                ),
                child: const MacosIcon(Icons.tune, size: 16),
              ),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 12),
          Padding(
            padding: headlinePadding,
            child: Text(t.regexp.testStringTitle),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: MacosTextField(
              controller: _testStringController,
              textAlignVertical: const TextAlignVertical(y: -1),
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }

  void _regExpUpdate() => context.read<RegExpFeature>().accept(
    RegExpMessage.updateInput(_regExpController.text),
  );

  void _exampleUpdate() => context.read<RegExpFeature>().accept(
    RegExpMessage.updateTestString(_testStringController.text),
  );
}

class _GlobalCheckbox extends StatelessWidget {
  const _GlobalCheckbox();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.isGlobal != curr.isGlobal,
      builder: (context, state) {
        return LabeledCheckbox(
          value: state.isGlobal,
          onChanged:
              (isGlobal) => context.read<RegExpFeature>().accept(
                RegExpMessage.updateGlobal(isGlobal),
              ),
          label: t.regexp.settings.global,
        );
      },
    );
  }
}

class _MultilineCheckbox extends StatelessWidget {
  const _MultilineCheckbox();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.isMultiline != curr.isMultiline,
      builder: (context, state) {
        return LabeledCheckbox(
          value: state.isMultiline,
          onChanged:
              (isMultiline) => context.read<RegExpFeature>().accept(
                RegExpMessage.updateMultiline(isMultiline),
              ),
          label: t.regexp.settings.multiline,
        );
      },
    );
  }
}

class _CaseSensitiveCheckbox extends StatelessWidget {
  const _CaseSensitiveCheckbox();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.isCaseSensitive != curr.isCaseSensitive,
      builder: (context, state) {
        return LabeledCheckbox(
          value: state.isCaseSensitive,
          onChanged:
              (isCaseSensitive) => context.read<RegExpFeature>().accept(
                RegExpMessage.updateCaseSensitive(isCaseSensitive),
              ),
          label: t.regexp.settings.caseSensitive,
        );
      },
    );
  }
}

class _UnicodeCheckbox extends StatelessWidget {
  const _UnicodeCheckbox();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.isUnicode != curr.isUnicode,
      builder: (context, state) {
        return LabeledCheckbox(
          value: state.isUnicode,
          onChanged:
              (isUnicode) => context.read<RegExpFeature>().accept(
                RegExpMessage.updateUnicode(isUnicode),
              ),
          label: t.regexp.settings.unicode,
        );
      },
    );
  }
}

class _DotAllCheckbox extends StatelessWidget {
  const _DotAllCheckbox();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.isDotAll != curr.isDotAll,
      builder: (context, state) {
        return LabeledCheckbox(
          value: state.isDotAll,
          onChanged:
              (isDotAll) => context.read<RegExpFeature>().accept(
                RegExpMessage.updateDotAll(isDotAll),
              ),
          label: t.regexp.settings.dotAll,
        );
      },
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  final String label;
  final bool? value;
  final ValueChanged<bool>? onChanged;

  const LabeledCheckbox({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (value == null || value == false) {
          onChanged?.call(true);
        } else {
          onChanged?.call(false);
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MacosCheckbox(value: value, onChanged: onChanged),
          const SizedBox(width: 4),
          Text(label),
        ],
      ),
    );
  }
}

class _MatchInformation extends StatelessWidget {
  const _MatchInformation();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<RegExpFeature, RegExpState>(
      buildWhen: (prev, curr) => prev.matches != curr.matches,
      builder: (context, state) {
        final matches = state.matches;

        if (matches == null || matches.isEmpty) {
          return Text(t.regexp.matchInfoNothing);
        }

        return ListView.separated(
          itemCount: matches.length,
          separatorBuilder: (context, i) => const MacosPulldownMenuDivider(),
          itemBuilder:
              (context, i) => _MatchWidget(position: i + 1, match: matches[i]),
        );
      },
    );
  }
}

class _MatchWidget extends StatelessWidget {
  final int position;
  final RegExpMatch match;

  const _MatchWidget({required this.position, required this.match});

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: t.regexp.matchInfoMatch(position: position)),
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: t.regexp.matchInfoIndexes(
                      start: match.start,
                      end: match.end,
                    ),
                    style: theme.typography.footnote.copyWith(
                      color: theme.searchFieldTheme.highlightColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Text(match.group(0)!, textAlign: TextAlign.end)),
          ],
        ),
        const SizedBox(height: 4),
        for (int i = 1; i <= match.groupCount; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: _GroupWidget(position: i, value: match.group(i)),
          ),
      ],
    );
  }
}

class _GroupWidget extends StatelessWidget {
  final int position;
  final String value;

  const _GroupWidget({required this.position, String? value})
    : value = value ?? '';

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.regexp.matchInfoGroup(position: position),
          style: const TextStyle(decoration: TextDecoration.underline),
        ),
        Expanded(child: Text(value, textAlign: TextAlign.end)),
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
        context: context,
        style: style,
        withComposing: withComposing,
      );
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
        spans.add(TextSpan(text: simpleText, style: style));
      }

      final matchText = text.substring(match.start, match.end);
      if (matchText.isNotEmpty) {
        spans.add(
          TextSpan(
            text: matchText,
            style: style?.copyWith(
              backgroundColor: Colors.green.withValues(alpha: 0.3),
            ),
          ),
        );
      }

      lastStart = match.end;
    } while (lastStart < length && matchesIterator.moveNext());

    if (lastStart < length) {
      spans.add(TextSpan(text: text.substring(lastStart), style: style));
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
