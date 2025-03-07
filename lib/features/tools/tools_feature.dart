// ignore_for_file: prefer_void_to_null

import 'package:mini_tea/feature.dart';

import 'message/tools_message.dart';
import 'state/tools_state.dart';
import 'tools_update.dart';

export 'message/tools_message.dart';
export 'state/tools_state.dart';

typedef ToolsFeature = Feature<ToolsState, ToolsMessage, Null>;

ToolsFeature toolsFeatureFactory() => ToolsFeature(
      initialState: const ToolsState(selectedTool: 0),
      update: toolsUpdate,
    );
