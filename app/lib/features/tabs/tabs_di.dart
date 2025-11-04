import 'package:flutter/widgets.dart';

import '../../di_v0.dart';
import 'domain/tabs_feature.dart';
import 'presentation/tab_view_widget.dart';
import 'presentation/tabs_list_widget.dart';

abstract interface class TabsDi implements Initializable {
  factory TabsDi({
    required MiniDi depTree,
  }) = _TabsDiImpl;

  TabsFeature get tabsFeature;

  TabsListWidget tabsListWidgetFactory({
    required ScrollController scrollController,
  });

  TabViewWidget tabViewWidgetFactory();
}

final class _TabsDiImpl implements TabsDi {
  final MiniDi _depTree;

  _TabsDiImpl({
    required MiniDi depTree,
  }) : _depTree = depTree;

  @override
  TabViewWidget tabViewWidgetFactory() {
    return const TabViewWidget();
  }

  @override
  late final TabsFeature tabsFeature = tabsFeatureFactory(
    toolsRegistry: _depTree.toolsRegistry,
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
