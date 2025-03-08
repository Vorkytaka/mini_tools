import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tool/tool.dart';
import '../state/tools_state.dart';

part 'tools_message.freezed.dart';

@freezed
@immutable
sealed class ToolsMessage with _$ToolsMessage {
  const factory ToolsMessage.selectTool(Tools selectedTool) = SelectToolMessage;

  const factory ToolsMessage.updateQuery(String query) = UpdateQueryMessage;

  const factory ToolsMessage.updateSearchResult(List<Tools> result) =
      UpdateSearchResultMessage;
}
