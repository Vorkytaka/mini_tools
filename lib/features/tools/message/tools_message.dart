import 'package:freezed_annotation/freezed_annotation.dart';

part 'tools_message.freezed.dart';

@freezed
@immutable
sealed class ToolsMessage with _$ToolsMessage {
  const factory ToolsMessage.selectTool(int selectedTool) = SelectToolMessage;
}
