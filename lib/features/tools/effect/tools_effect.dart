import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/tools_state.dart';

part 'tools_effect.freezed.dart';

@freezed
@immutable
sealed class ToolsEffect with _$ToolsEffect {
  const factory ToolsEffect.searchTools({
    required String query,
    required List<Tools> tools,
  }) = SearchToolsEffect;

  const factory ToolsEffect.saveState(ToolsState state) = SaveStateEffect;

  const factory ToolsEffect.loadState() = LoadStateEffect;
}
