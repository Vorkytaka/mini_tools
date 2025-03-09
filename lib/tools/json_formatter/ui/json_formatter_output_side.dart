part of 'json_formatter_screen.dart';

final class _OutputSide extends StatelessWidget {
  final CodeLineEditingController outputController;
  final TextEditingController jsonPathController;

  const _OutputSide({
    required this.outputController,
    required this.jsonPathController,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              Expanded(child: Text(t.common.output)),
              PushButton(
                controlSize: ControlSize.regular,
                secondary: true,
                onPressed: () {
                  final text = outputController.text;
                  if (text.isNotEmpty) {
                    Clipboard.setData(ClipboardData(text: text));
                  }
                },
                child: Text(t.common.copy),
              ),
              const SizedBox(width: 8),
              FeatureBuilder<JsonFormatterFeature, JsonFormatterState>(
                buildWhen: (prev, curr) => prev.format != curr.format,
                builder: (context, state) {
                  return MacosPopupButton(
                    value: state.format,
                    items: JsonOutputFormat.values
                        .map(
                          (type) => MacosPopupMenuItem(
                            value: type,
                            child: Text(type.format(context)),
                          ),
                        )
                        .toList(growable: false),
                    onChanged: (format) {
                      if (format != null) {
                        context
                            .read<JsonFormatterFeature>()
                            .accept(FormatUpdateMessage(format));
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: MacosCodeEditor(
            controller: outputController,
            readOnly: true,
            style: MacosCodeEditor.defaultStyle(
              context,
              codeTheme: CodeHighlightTheme(
                languages: {'json': CodeHighlightThemeMode(mode: langJson)},
                theme: CodeThemes.monokai(TextStyles.firaCode),
              ),
            ),
            indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
          ),
        ),
        const SizedBox(height: 8),
        MacosTextField(
          controller: jsonPathController,
          placeholder: t.jsonFormatter.jsonPathHint,
        ),
      ],
    );
  }
}
