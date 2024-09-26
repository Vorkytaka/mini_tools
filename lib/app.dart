import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:syntax_highlight/syntax_highlight.dart';
import 'package:timezone/timezone.dart';

import 'common/highlight_theme_holder.dart';
import 'common/timezone_holder.dart';
import 'i18n/strings.g.dart';
import 'tools/tools.dart';

class App extends StatelessWidget {
  final Location timezone;
  final HighlighterTheme highlighterTheme;
  final HighlighterTheme highlighterDarkTheme;

  const App({
    required this.timezone,
    required this.highlighterTheme,
    required this.highlighterDarkTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      child: HighlightThemeHolder(
        highlighterTheme: highlighterTheme,
        highlighterDarkTheme: highlighterDarkTheme,
        child: TimezoneHolder(
          timezone: timezone,
          child: Builder(
            builder: (context) => MacosApp(
              locale: TranslationProvider.of(context).flutterLocale,
              supportedLocales: AppLocaleUtils.supportedLocales,
              // localizationsDelegates: GlobalMaterialLocalizations.delegates,
              home: const _Window(),
              builder: (context, child) => Theme(
                data: ThemeData.dark(),
                child: child!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Window extends StatefulWidget {
  const _Window();

  @override
  State<_Window> createState() => _WindowState();
}

class _WindowState extends State<_Window> {
  int _selectedTool = 0;

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 200,
        isResizable: false,
        builder: (context, controller) => SidebarItems(
          currentIndex: _selectedTool,
          onChanged: (i) {
            if (i == _selectedTool) {
              return;
            }

            setState(() {
              _selectedTool = i;
            });
          },
          items: tools
              .map((tool) => SidebarItem(
                    leading: MacosIcon(tool.icon),
                    label: Text(tool.buildTitle(context)),
                  ))
              .toList(growable: false),
        ),
      ),
      child: tools[_selectedTool].buildScreen(context),
    );
  }
}
