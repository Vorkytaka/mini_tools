import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../domain/message/tabs_message.dart';
import '../domain/state/tabs_state.dart';
import '../domain/tabs_feature.dart';
import 'tab_item_widget.dart';

final class TabsListWidget extends StatelessWidget {
  final ScrollController _controller;

  const TabsListWidget({
    required ScrollController controller,
    super.key,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<TabsFeature, TabsState>(
      builder: (context, state) {
        final tabs = state.tabs;
        final activeTabId = state.activeTabId;

        return ListView.separated(
          controller: _controller,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
          itemCount: tabs.length,
          separatorBuilder: (context, i) => const SizedBox(height: 2),
          itemBuilder: (context, i) {
            final item = tabs[i];

            return TabItemWidget(
              icon: MacosIcon(item.descriptor.metadata.icon),
              title: Text(
                item.title ??
                    item.descriptor.localizationData.titleDelegate(context),
              ),
              isSelected: item.id == activeTabId,
              onClosePressed: () {
                final feature = context.read<TabsFeature>();
                feature.accept(TabsMessage.deleteTab(tabId: item.id));
              },
              onPressed: () {
                final feature = context.read<TabsFeature>();
                feature.accept(TabsMessage.selectTab(tabId: item.id));
              },
            );
          },
        );
      },
    );
  }
}
