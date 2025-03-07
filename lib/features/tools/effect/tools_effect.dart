import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tool/tool.dart';

part 'tools_effect.freezed.dart';

@freezed
@immutable
sealed class ToolsEffect with _$ToolsEffect {
  const factory ToolsEffect.searchTools({
    required String query,
    required List<Tool> tools,
  }) = SearchToolsEffect;
}
