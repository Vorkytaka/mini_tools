import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/tools_state.dart';

part 'tools_effect.freezed.dart';

@freezed
@immutable
sealed class ToolsEffect with _$ToolsEffect {
  const factory ToolsEffect.searchTools({
    required String query,
    required List<String> tools,
  }) = SearchToolsEffect;

  const factory ToolsEffect.saveSelectedTool(String toolId) = SaveSelectedToolEffect;

  const factory ToolsEffect.loadSelectedTool() = LoadSelectedToolEffect;
}
