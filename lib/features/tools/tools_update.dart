// ignore_for_file: prefer_void_to_null

import 'package:mini_tea/feature.dart';

import 'effect/tools_effect.dart';
import 'tools_feature.dart';

Next<ToolsState, ToolsEffect> toolsUpdate(
  ToolsState state,
  ToolsMessage message,
) {
  switch (message) {
    case SelectToolMessage():
      String toolId = message.toolId;
      if (!state.toolIds.contains(toolId)) {
        // If there is no tool that was selected,
        // then just pick the first one of all
        toolId = state.toolIds.first;
      }
      return next(
        state: state.copyWith(selectedToolId: toolId),
        effects: [ToolsEffect.saveSelectedTool(toolId)],
      );
    case UpdateQueryMessage():
      return next(
        state: state.copyWith(searchQuery: message.query),
        effects: [
          ToolsEffect.searchTools(
            query: message.query,
            tools: state.toolIds,
          ),
        ],
      );
    case UpdateSearchResultMessage():
      return next(state: state.copyWith(searchResult: message.result));
  }
}
