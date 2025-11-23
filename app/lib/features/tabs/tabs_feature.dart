import 'package:flutter/widgets.dart';

import '../../core/common/initializable.dart';
import '../../core/tool_v2/src/tool_registry.dart';
import 'src/domain/tabs_feature.dart';
import 'src/presentation/tab_view_widget.dart';
import 'src/presentation/tabs_list_widget.dart';

abstract interface class TabsFeatureController implements Initializable {
  factory TabsFeatureController({
    required ToolsRegistry toolsRegistry,
  }) = _TabsFeatureController;

  TabsFeature get tabsFeature;

  TabsListWidget tabsListWidgetFactory({
    required ScrollController scrollController,
  });

  TabViewWidget tabViewWidgetFactory();
}

final class _TabsFeatureController implements TabsFeatureController {
  final ToolsRegistry _toolsRegistry;

  _TabsFeatureController({
    required ToolsRegistry toolsRegistry,
  }) : _toolsRegistry = toolsRegistry;

  @override
  TabViewWidget tabViewWidgetFactory() {
    return const TabViewWidget();
  }

  @override
  late final TabsFeature tabsFeature = tabsFeatureFactory(
    toolsRegistry: _toolsRegistry,
  );

  @override
  TabsListWidget tabsListWidgetFactory({
    required ScrollController scrollController,
  }) {
    return TabsListWidget(
      controller: scrollController,
    );
  }

  @override
  Future<void> init() async {
    await tabsFeature.init();
  }

  @override
  Future<void> dispose() async {
    await tabsFeature.dispose();
  }
}
