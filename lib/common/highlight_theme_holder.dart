import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class HighlightThemeHolder extends InheritedWidget {
  final HighlighterTheme highlighterTheme;
  final HighlighterTheme highlighterDarkTheme;

  const HighlightThemeHolder({
    required this.highlighterTheme,
    required this.highlighterDarkTheme,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(HighlightThemeHolder oldWidget) =>
      highlighterTheme != oldWidget.highlighterTheme ||
      highlighterDarkTheme != oldWidget.highlighterDarkTheme;

  static HighlighterTheme of(BuildContext context) {
    final brightness = MacosTheme.brightnessOf(context);
    final themeHolder =
        context.dependOnInheritedWidgetOfExactType<HighlightThemeHolder>()!;

    return brightness == Brightness.light
        ? themeHolder.highlighterTheme
        : themeHolder.highlighterDarkTheme;
  }
}
