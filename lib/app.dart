import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

import 'common/copy_overlay/copy_overlay.dart';
import 'core/common/datetime_inherited_model.dart';
import 'common/ui/macos_ui_hacks.dart';
import 'features/tools/tools_feature.dart';
import 'i18n/strings.g.dart';
import 'tools.dart';

class MiniToolsApp extends StatelessWidget {
  static final _key = GlobalKey();

  const MiniToolsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureProvider.create(
      create: (context) => toolsFeatureFactory(key: _key),
      child: DatetimeHolder(
        child: TranslationProvider(
          child: Builder(
            builder:
                (context) => MacosApp(
                  key: _key,
                  locale: TranslationProvider.of(context).flutterLocale,
                  supportedLocales: AppLocaleUtils.supportedLocales,
                  // localizationsDelegates: GlobalMaterialLocalizations.delegates,
                  home: const _Window(),
                  builder:
                      (context, child) => Theme(
                        data: ThemeData.dark(),
                        child: CopyOverlay(
                          child: FeatureListener<ToolsFeature, ToolsState>(
                            listenWhen:
                                (prev, curr) =>
                                    prev.selectedToolId != curr.selectedToolId,
                            listener: (context, state) {
                              // We just listen if selected tool changes
                              // That's mean, that we did change the page
                              // So, let's just hide copy overlay
                              CopyOverlay.hideAll(context);
                            },
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
        builder:
            (context, controller) => _SidebarContent(controller: controller),
        bottom: const _BottomWidget(),
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
      context.read<ToolsFeature>().accept(
        ToolsMessage.updateQuery(_controller.text),
      );
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
    return MacosSearchField(controller: _controller, minLines: 1, maxLines: 1);
  }
}

class _SidebarContent extends StatelessWidget {
  final ScrollController controller;

  const _SidebarContent({required this.controller});

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
            itemBuilder: (context, i) {
              final tool = ToolsRegistry.toolById(results[i])!;
              return MacosSidebarItem(
                item: SidebarItem(
                  label: Text(tool.buildTitle(context)),
                  leading: MacosIcon(tool.icon),
                ),
                onClick: () {
                  context.read<ToolsFeature>().accept(
                    ToolsMessage.selectTool(results[i]),
                  );
                },
                selected: results[i] == state.selectedToolId,
              );
            },
          );
        }

        return SidebarItems(
          scrollController: controller,
          currentIndex: state.toolIds.indexOf(state.selectedToolId),
          onChanged: (i) {
            final tool = state.toolIds[i];
            context.read<ToolsFeature>().accept(ToolsMessage.selectTool(tool));
          },
          items: state.toolIds
              .map(ToolsRegistry.toolById)
              .nonNulls
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
        final tool = ToolsRegistry.toolById(state.selectedToolId)!;
        return tool.buildScreen(context);
      },
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        final info = snapshot.data;

        if (info == null) {
          return const SizedBox();
        }

        final theme = MacosTheme.of(context);
        final text = '${info.appName} ${info.version}';

        return DefaultTextStyle.merge(
          style: theme.typography.caption1.copyWith(
            color: theme.typography.caption1.color?.withValues(alpha: 0.7),
          ),
          child: Text(text),
        );
      },
    );
  }
}
