// ignore_for_file: prefer_void_to_null

import 'package:flutter/widgets.dart';
import 'package:mini_tea/feature.dart';

import 'effect/tools_effect.dart';
import 'message/tools_message.dart';
import 'state/tools_state.dart';
import 'tools_effect_handler.dart';
import 'tools_update.dart';

export 'message/tools_message.dart';
export 'state/tools_state.dart';

typedef ToolsFeature = Feature<ToolsState, ToolsMessage, ToolsEffect>;

ToolsFeature toolsFeatureFactory({
  required GlobalKey key,
}) =>
    ToolsFeature(
      initialState: ToolsState.defaultValue,
      update: toolsUpdate,
      effectHandlers: [ToolsEffectHandler(key: key)],
    );
