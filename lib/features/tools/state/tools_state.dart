import 'package:freezed_annotation/freezed_annotation.dart';

part 'tools_state.freezed.dart';

@freezed
@immutable
class ToolsState with _$ToolsState {
  const factory ToolsState({
    required int selectedTool,
  }) = _ToolsState;
}
