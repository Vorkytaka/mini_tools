import 'package:freezed_annotation/freezed_annotation.dart';

part 'tools_message.freezed.dart';

@freezed
@immutable
sealed class ToolsMessage with _$ToolsMessage {
  const factory ToolsMessage.selectTool(String toolId) = SelectToolMessage;

  const factory ToolsMessage.updateQuery(String query) = UpdateQueryMessage;

  const factory ToolsMessage.updateSearchResult(List<String> result) =
      UpdateSearchResultMessage;
}
