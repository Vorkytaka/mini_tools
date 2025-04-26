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
      final newState = state.copyWith(selectedTool: message.selectedTool);
      return next(
        state: newState,
        effects: [ToolsEffect.saveState(newState)],
      );
    case UpdateQueryMessage():
      return next(
        state: state.copyWith(searchQuery: message.query),
        effects: [
          ToolsEffect.searchTools(
            query: message.query,
            tools: state.tools,
          ),
        ],
      );
    case UpdateSearchResultMessage():
      return next(state: state.copyWith(searchResult: message.result));
    case LoadedStateMessage():
      return next(state: message.state);
  }
}
