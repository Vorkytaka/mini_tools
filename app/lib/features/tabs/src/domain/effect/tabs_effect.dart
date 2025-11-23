import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/tool_v2/tool_v2.dart';

part 'tabs_effect.freezed.dart';

@freezed
@immutable
sealed class TabsEffect with _$TabsEffect {
  const factory TabsEffect.createTab({required String toolId}) =
      CreateTabEffect;

  const factory TabsEffect.disposeTool({required ToolInstance tool}) =
      DisposeToolEffect;
}
