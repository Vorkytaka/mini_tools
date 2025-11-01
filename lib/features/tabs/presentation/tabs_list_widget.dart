import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/tab_manager.dart';
import 'tab_item_widget.dart';

final class TabsListWidget extends StatelessWidget {
  final ScrollController _controller;
  final TabManager _manager;

  const TabsListWidget({
    required ScrollController controller,
    required TabManager manager,
    super.key,
  }) : _controller = controller,
       _manager = manager;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<(List<TabItem>, TabItem?)>(
      stream: Rx.combineLatest2(
        _manager.tabsStream,
        _manager.activeTabStream,
        (tabs, activeTab) => (tabs, activeTab),
      ),
      builder: (context, snapshot) {
        final data = snapshot.data;

        if (data == null) {
          return const SizedBox.shrink();
        }

        final tabs = data.$1;
        final activeTab = data.$2;

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
              isSelected: item.id == activeTab?.id,
              onClosePressed: () {
                _manager.deleteTab(item.id);
              },
              onPressed: () {
                _manager.selectTab(item.id);
              },
            );
          },
        );
      },
    );
  }
}
