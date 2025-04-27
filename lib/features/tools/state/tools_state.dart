import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tools.dart';
import '../../../tools/datetime_converter/datetime_converter_tool.dart';

part 'tools_state.freezed.dart';

part 'tools_state.g.dart';

@freezed
@immutable
class ToolsState with _$ToolsState {
  const factory ToolsState({
    required String selectedToolId,
    required List<String> toolIds,
    required String searchQuery,
    required List<String> searchResult,
  }) = _ToolsState;

  static ToolsState defaultValue = ToolsState(
    selectedToolId: DatetimeConverterTool.id,
    toolIds: ToolsRegistry.toolIds,
    searchQuery: '',
    searchResult: List.empty(growable: false),
  );

  factory ToolsState.fromJson(Map<String, dynamic> json) =>
      _$ToolsStateFromJson(json);
}
