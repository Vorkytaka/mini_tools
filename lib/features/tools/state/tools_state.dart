import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tool/tool.dart';
import '../../../tools/tools.dart' as t;

part 'tools_state.freezed.dart';

@freezed
@immutable
class ToolsState with _$ToolsState {
  const factory ToolsState({
    required int selectedTool,
    required List<Tool> tools,
    required String searchQuery,
    required List<Tool> searchResult,
  }) = _ToolsState;

  static ToolsState defaultValue = ToolsState(
    selectedTool: 0,
    tools: t.tools,
    searchQuery: '',
    searchResult: List.empty(growable: false),
  );
}
