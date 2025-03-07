import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:syntax_highlight/syntax_highlight.dart';
import 'package:timezone/timezone.dart';

import 'common/datetime_inherited_model.dart';
import 'common/highlight_theme_holder.dart';
import 'common/timezone_holder.dart';
import 'features/tools/tools_feature.dart';
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
    return FeatureProvider.create(
      create: (context) => toolsFeatureFactory(),
      child: DatetimeHolder(
        child: TranslationProvider(
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
        ),
      ),
    );
  }
}

class _Window extends StatelessWidget {
  const _Window();

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      disableWallpaperTinting: true,
      sidebar: Sidebar(
        minWidth: 200,
        isResizable: false,
        builder: (context, controller) => _SidebarContent(
          controller: controller,
        ),
      ),
      child: const _BodyContent(),
    );
  }
}

class _SidebarContent extends StatelessWidget {
  final ScrollController controller;

  const _SidebarContent({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<ToolsFeature, ToolsState>(
      builder: (context, state) {
        final selectedTool = state.selectedTool;

        return SidebarItems(
          currentIndex: selectedTool,
          onChanged: (i) {
            if (i == selectedTool) {
              return;
            }

            context.read<ToolsFeature>().accept(ToolsMessage.selectTool(i));
          },
          items: tools
              .map(
                (tool) => SidebarItem(
                  leading: MacosIcon(tool.icon),
                  label: Text(tool.buildTitle(context)),
                ),
              )
              .toList(growable: false),
        );
      },
    );
  }
}

class _BodyContent extends StatelessWidget {
  const _BodyContent();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<ToolsFeature, ToolsState>(
      builder: (context, state) {
        return tools[state.selectedTool].buildScreen(context);
      },
    );
  }
}
