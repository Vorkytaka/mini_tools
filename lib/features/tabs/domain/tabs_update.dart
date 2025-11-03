import 'package:mini_tea/feature.dart';

import 'effect/tabs_effect.dart';
import 'message/tabs_message.dart';
import 'state/tabs_state.dart';

Next<TabsState, TabsEffect> tabsUpdate(TabsState state, TabsMessage message) {
  switch (message) {
    case CreateTabMessage():
      return next(effects: [TabsEffect.createTab(toolId: message.toolId)]);
    case DeleteTabMessage():
      final updatedTabs = state.tabs
          .where((tab) => tab.id != message.tabId)
          .toList();
      return next(
        state: state.copyWith(
          tabs: updatedTabs,
          activeTabId: state.activeTabId == message.tabId
              ? (updatedTabs.isNotEmpty ? updatedTabs.first.id : null)
              : state.activeTabId,
        ),
      );
    case SelectTabMessage():
      return next(state: state.copyWith(activeTabId: message.tabId));
    case CreatedTabMessage():
      return next(
        state: state.copyWith(
          tabs: [...state.tabs, message.tab],
          activeTabId: message.tab.id,
        ),
      );
  }
}
