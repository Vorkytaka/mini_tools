part of 'json_formatter_screen.dart';

final class _InputSide extends StatelessWidget {
  final CodeLineEditingController controller;

  const _InputSide({
    required this.controller,
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
              Text(t.common.input),
              const SizedBox(width: 8),
              PushButton(
                controlSize: ControlSize.regular,
                secondary: true,
                onPressed: () {
                  controller.text = '';
                },
                child: Text(t.common.clear),
              ),
              const SizedBox(width: 8),
              PushButton(
                controlSize: ControlSize.regular,
                secondary: true,
                onPressed: () {
                  Clipboard.getData('text/plain').then((value) {
                    if (value != null && value.text != null) {
                      controller.text = value.text!;
                    }
                  });
                },
                child: Text(t.common.paste),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: MacosCodeEditor(
            controller: controller,
            style: MacosCodeEditor.defaultStyle(
              context,
              codeTheme: CodeHighlightTheme(
                languages: {'json': CodeHighlightThemeMode(mode: langJson)},
                theme: CodeThemes.monokai(TextStyles.firaCode),
              ),
              defaultFontFamily: TextStyles.firaCode.fontFamily,
            ),
            indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
          ),
        ),
      ],
    );
  }
}
