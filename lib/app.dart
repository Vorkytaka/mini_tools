import 'package:flutter/cupertino.dart';
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

class App extends StatelessWidget {
  static final _key = GlobalKey();

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
      create: (context) => toolsFeatureFactory(key: _key),
      child: DatetimeHolder(
        child: TranslationProvider(
          child: HighlightThemeHolder(
            highlighterTheme: highlighterTheme,
            highlighterDarkTheme: highlighterDarkTheme,
            child: TimezoneHolder(
              timezone: timezone,
              child: Builder(
                builder: (context) => MacosApp(
                  key: _key,
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
        top: const _SearchField(),
        builder: (context, controller) => _SidebarContent(
          controller: controller,
        ),
      ),
      child: const _BodyContent(),
    );
  }
}

class _SearchField extends StatefulWidget {
  const _SearchField();

  @override
  State<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<_SearchField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      context
          .read<ToolsFeature>()
          .accept(ToolsMessage.updateQuery(_controller.text));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final state = context.watch<ToolsFeature>().state;
    if (state.searchQuery != _controller.text) {
      _controller.text = state.searchQuery;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosSearchField(
      controller: _controller,
      minLines: 1,
      maxLines: 1,
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
        if (state.searchQuery.isNotEmpty) {
          final results = state.searchResult;
          final theme = MacosTheme.of(context);

          return ListView.builder(
            itemCount: results.length,
            padding: EdgeInsets.all(10.0 - theme.visualDensity.horizontal),
            itemBuilder: (context, i) => _SidebarItem(
              item: SidebarItem(
                label: Text(results[i].tool.buildTitle(context)),
                leading: MacosIcon(results[i].tool.icon),
              ),
              onClick: () {
                context
                    .read<ToolsFeature>()
                    .accept(ToolsMessage.selectTool(results[i]));
              },
              selected: results[i] == state.selectedTool,
            ),
          );
        }

        return SidebarItems(
          scrollController: controller,
          currentIndex: state.tools.indexOf(state.selectedTool),
          onChanged: (i) {
            final tool = state.tools[i];
            context.read<ToolsFeature>().accept(ToolsMessage.selectTool(tool));
          },
          items: Tools.values
              .map((e) => e.tool)
              .map((tool) => SidebarItem(
                    leading: MacosIcon(tool.icon),
                    label: Text(tool.buildTitle(context)),
                  ))
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
        return state.selectedTool.tool.buildScreen(context);
      },
    );
  }
}

/// –––––––––––––––––––––––––––––––––––––––––––––––––––––
/// ––– HERE AND BELOW JUST COPY-PASTED FROM MACOS_UI –––
/// –––––––––––– BECAUSE IT IS PRIVATE THERE ––––––––––––
/// –––––––––––––––––––––––––––––––––––––––––––––––––––––

class _SidebarItem extends StatelessWidget {
  /// Builds a [_SidebarItem].
  // ignore: use_super_parameters
  const _SidebarItem({
    required this.item,
    required this.onClick,
    required this.selected,
    Key? key,
  }) : super(key: key);

  /// The widget to lay out first.
  ///
  /// Typically an [Icon]
  final SidebarItem item;

  /// Whether the item is selected or not
  final bool selected;

  /// A function to perform when the widget is clicked or tapped.
  ///
  /// Typically a [Navigator] call
  final VoidCallback? onClick;

  void _handleActionTap() => onClick?.call();

  Map<Type, Action<Intent>> get _actionMap => <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) => _handleActionTap(),
        ),
        ButtonActivateIntent: CallbackAction<ButtonActivateIntent>(
          onInvoke: (intent) => _handleActionTap(),
        ),
      };

  bool get hasLeading => item.leading != null;

  bool get hasTrailing => item.trailing != null;

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    final selectedColor = MacosDynamicColor.resolve(
      _ColorProvider.getActiveColor(
        accentColor: theme.accentColor ?? AccentColor.blue,
        isDarkModeEnabled: theme.brightness == Brightness.dark,
        isWindowMain: true,
      ),
      context,
    );
    final unselectedColor = MacosDynamicColor.resolve(
      item.unselectedColor ?? MacosColors.transparent,
      context,
    );

    final double spacing = 10.0 + theme.visualDensity.horizontal;
    const itemSize = SidebarItemSize.medium;
    TextStyle? labelStyle;
    switch (itemSize) {
      case SidebarItemSize.small:
        labelStyle = theme.typography.subheadline;
        break;
      case SidebarItemSize.medium:
        labelStyle = theme.typography.body;
        break;
      case SidebarItemSize.large:
        labelStyle = theme.typography.title3;
        break;
    }

    return Semantics(
      label: item.semanticLabel,
      button: true,
      focusable: true,
      focused: item.focusNode?.hasFocus,
      enabled: onClick != null,
      selected: selected,
      child: GestureDetector(
        onTap: onClick,
        child: FocusableActionDetector(
          focusNode: item.focusNode,
          descendantsAreFocusable: false,
          enabled: onClick != null,
          //mouseCursor: SystemMouseCursors.basic,
          actions: _actionMap,
          child: Container(
            width: 134.0 + theme.visualDensity.horizontal,
            height: itemSize.height + theme.visualDensity.vertical,
            decoration: ShapeDecoration(
              color: selected ? selectedColor : unselectedColor,
              shape: item.shape ??
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 7 + theme.visualDensity.horizontal,
              horizontal: spacing,
            ),
            child: Row(
              children: [
                if (hasLeading)
                  Padding(
                    padding: EdgeInsets.only(right: spacing),
                    child: MacosIconTheme.merge(
                      data: MacosIconThemeData(
                        color:
                            selected ? MacosColors.white : theme.primaryColor,
                        size: itemSize.iconSize,
                      ),
                      child: item.leading!,
                    ),
                  ),
                Expanded(
                  child: DefaultTextStyle(
                    style: labelStyle.copyWith(
                      color: selected ? textLuminance(selectedColor) : null,
                      overflow: TextOverflow.ellipsis,
                    ),
                    child: item.label,
                  ),
                ),
                if (hasTrailing) ...[
                  const Spacer(),
                  DefaultTextStyle(
                    style: labelStyle.copyWith(
                      color: selected ? textLuminance(selectedColor) : null,
                    ),
                    child: item.trailing!,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Color textLuminance(Color backgroundColor) {
  return backgroundColor.computeLuminance() >= 0.5
      ? CupertinoColors.black
      : CupertinoColors.white;
}

class _ColorProvider {
  _ColorProvider._();

  /// Returns the primary color based on the provided parameters.
  static Color getPrimaryColor({
    required AccentColor accentColor,
    required bool isDarkModeEnabled,
    required bool isWindowMain,
  }) {
    if (isDarkModeEnabled) {
      if (!isWindowMain) {
        return const MacosColor.fromRGBO(100, 100, 100, 0.625);
      }

      switch (accentColor) {
        case AccentColor.blue:
          return const MacosColor.fromRGBO(29, 151, 255, 1.0);

        case AccentColor.purple:
          return const MacosColor.fromRGBO(204, 118, 207, 1.0);

        case AccentColor.pink:
          return const MacosColor.fromRGBO(255, 114, 194, 1.0);

        case AccentColor.red:
          return const MacosColor.fromRGBO(225, 118, 124, 1.0);

        case AccentColor.orange:
          return const MacosColor.fromRGBO(255, 147, 44, 1.0);

        case AccentColor.yellow:
          return const MacosColor.fromRGBO(255, 220, 24, 1.0);

        case AccentColor.green:
          return const MacosColor.fromRGBO(114, 202, 87, 1.0);

        case AccentColor.graphite:
          return const MacosColor.fromRGBO(152, 152, 152, 1.0);
      }
    }

    if (!isWindowMain) {
      return const MacosColor.fromRGBO(190, 190, 190, 1.0);
    }

    switch (accentColor) {
      case AccentColor.blue:
        return const MacosColor.fromRGBO(0, 88, 224, 1.0);

      case AccentColor.purple:
        return const MacosColor.fromRGBO(131, 44, 134, 1.0);

      case AccentColor.pink:
        return const MacosColor.fromRGBO(212, 45, 126, 1.0);

      case AccentColor.red:
        return const MacosColor.fromRGBO(203, 45, 43, 1.0);

      case AccentColor.orange:
        return const MacosColor.fromRGBO(198, 82, 0, 1.0);

      case AccentColor.yellow:
        return const MacosColor.fromRGBO(206, 154, 2, 1.0);

      case AccentColor.green:
        return const MacosColor.fromRGBO(56, 146, 30, 1.0);

      case AccentColor.graphite:
        return const MacosColor.fromRGBO(100, 100, 100, 1.0);
    }
  }

  /// Returns the active color based on the provided parameters.
  static Color getActiveColor({
    required AccentColor accentColor,
    required bool isDarkModeEnabled,
    required bool isWindowMain,
  }) {
    if (isDarkModeEnabled) {
      if (!isWindowMain) {
        return const MacosColor.fromRGBO(76, 78, 65, 1.0);
      }

      switch (accentColor) {
        case AccentColor.blue:
          return const MacosColor.fromRGBO(22, 105, 229, 0.749);

        case AccentColor.purple:
          return const MacosColor.fromRGBO(204, 45, 202, 0.749);

        case AccentColor.pink:
          return const MacosColor.fromRGBO(229, 74, 145, 0.749);

        case AccentColor.red:
          return const MacosColor.fromRGBO(238, 64, 68, 0.749);

        case AccentColor.orange:
          return const MacosColor.fromRGBO(244, 114, 0, 0.749);

        case AccentColor.yellow:
          return const MacosColor.fromRGBO(233, 176, 0, 0.749);

        case AccentColor.green:
          return const MacosColor.fromRGBO(76, 177, 45, 0.749);

        case AccentColor.graphite:
          return const MacosColor.fromRGBO(129, 129, 122, 0.824);
      }
    }

    if (!isWindowMain) {
      return const MacosColor.fromRGBO(180, 180, 180, 1.0);
    }

    switch (accentColor) {
      case AccentColor.blue:
        return const MacosColor.fromRGBO(9, 129, 255, 0.749);

      case AccentColor.purple:
        return const MacosColor.fromRGBO(162, 28, 165, 0.749);

      case AccentColor.pink:
        return const MacosColor.fromRGBO(234, 81, 152, 0.749);

      case AccentColor.red:
        return const MacosColor.fromRGBO(220, 32, 40, 0.749);

      case AccentColor.orange:
        return const MacosColor.fromRGBO(245, 113, 0, 0.749);

      case AccentColor.yellow:
        return const MacosColor.fromRGBO(240, 180, 2, 0.749);

      case AccentColor.green:
        return const MacosColor.fromRGBO(66, 174, 33, 0.749);

      case AccentColor.graphite:
        return const MacosColor.fromRGBO(174, 174, 167, 0.847);
    }
  }
}
