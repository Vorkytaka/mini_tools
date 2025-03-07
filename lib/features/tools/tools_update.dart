// ignore_for_file: prefer_void_to_null

import 'package:mini_tea/feature.dart';

import 'tools_feature.dart';

Next<ToolsState, Null> toolsUpdate(ToolsState state, ToolsMessage message) {
  switch (message) {
    case SelectToolMessage():
      return next(state: state.copyWith(selectedTool: message.selectedTool));
  }
}
