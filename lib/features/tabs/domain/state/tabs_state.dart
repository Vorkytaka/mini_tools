import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/list_utils.dart';
import '../../../../core/tool_v2/src/tool_descriptor.dart';
import '../../../../core/tool_v2/src/tool_instance.dart';

part 'tabs_state.freezed.dart';

@freezed
@immutable
abstract class TabsState with _$TabsState {
  const factory TabsState({
    required List<TabItem> tabs,
    String? activeTabId,
  }) = _TabsState;

  static const initial = TabsState(
    tabs: [],
    activeTabId: null,
  );
}

extension TabsStateX on TabsState {
  TabItem? get activeTab =>
      tabs.firstWhereOrNull((tab) => tab.id == activeTabId);
}

@freezed
@immutable
abstract class TabItem with _$TabItem {
  const factory TabItem({
    required String id,
    required ToolInstance instance,
    required ToolDescriptor descriptor,
    String? title,
  }) = _TabItem;
}
