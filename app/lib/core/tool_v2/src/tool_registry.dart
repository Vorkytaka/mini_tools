import '../../common/list_utils.dart';
import '../tool_v2.dart';

final class ToolsRegistry {
  final List<ToolDescriptor> _tools;
  final List<ToolDescriptor> _availableTools;

  ToolsRegistry({required List<ToolDescriptor> tools})
    : _tools = List.unmodifiable(tools),
      _availableTools = tools
          .where((tool) => tool.metadata.isAvailable)
          .toList(growable: false);

  List<ToolDescriptor> get tools => _availableTools;

  ToolDescriptor? getToolById(String id) {
    return _tools.firstWhereOrNull((tool) => tool.id == id);
  }
}
