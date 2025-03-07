import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tool/tool.dart';

part 'tools_message.freezed.dart';

@freezed
@immutable
sealed class ToolsMessage with _$ToolsMessage {
  const factory ToolsMessage.selectTool(int selectedTool) = SelectToolMessage;

  const factory ToolsMessage.updateQuery(String query) = UpdateQueryMessage;

  const factory ToolsMessage.updateSearchResult(List<Tool> result) =
      UpdateSearchResultMessage;
}
