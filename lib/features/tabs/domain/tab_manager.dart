import 'package:rxdart/rxdart.dart';

import '../../../core/tool_v2/src/tool_registry.dart';
import '../../../core/tool_v2/tool_v2.dart';

/// TODO Migrate to the state management solution
final class TabManager {
  final ToolsRegistry toolsRegistry;

  final _tabsSubject = BehaviorSubject<List<TabItem>>.seeded([]);
  final _activeTab = BehaviorSubject<TabItem?>.seeded(null);

  TabManager({
    required this.toolsRegistry,
  });

  Stream<List<TabItem>> get tabsStream => _tabsSubject.stream;

  List<ToolDescriptor> get availableTools => toolsRegistry.tools;

  Future<void> createTab(String toolId) async {
    final toolDescriptor = toolsRegistry.getToolById(toolId)!;
    final instance = toolDescriptor.factory.create();
    await instance.init();
    final tab = TabItem(
      id: '${toolDescriptor.id}_${DateTime.now().millisecondsSinceEpoch}',
      instance: instance,
      descriptor: toolDescriptor,
    );
    _tabsSubject.add([
      ..._tabsSubject.value,
      tab,
    ]);
    _activeTab.value = tab;
  }

  Future<void> deleteTab(String id) async {
    final tabs = _tabsSubject.value;
    final tabIndex = tabs.indexWhere((tab) => tab.id == id);
    if (tabIndex == -1) {
      return Future.error(Exception());
    }
    final tab = tabs[tabIndex];
    final updatedTabs = List<TabItem>.from(tabs)..removeAt(tabIndex);
    _tabsSubject.add(updatedTabs);
    if (_activeTab.value?.id == id) {
      _activeTab.value = updatedTabs.isNotEmpty ? updatedTabs.first : null;
    }
    return tab.instance.dispose();
  }

  Future<void> selectTab(String id) async {
    final tabs = _tabsSubject.value;
    final tabIndex = tabs.indexWhere((tab) => tab.id == id);
    if (tabIndex == -1) {
      return Future.error(Exception());
    }
    _activeTab.value = tabs[tabIndex];
  }

  Stream<TabItem?> get activeTabStream => _activeTab.stream;
}

final class TabItem {
  final String id;
  final String? title;
  final ToolInstance instance;
  final ToolDescriptor descriptor;

  const TabItem({
    required this.id,
    required this.instance,
    required this.descriptor,
    this.title,
  });
}
