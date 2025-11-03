import 'package:mini_tea/feature.dart';

import '../../../core/tool_v2/src/tool_registry.dart';
import 'effect/tabs_effect.dart';
import 'message/tabs_message.dart';
import 'state/tabs_state.dart';
import 'tabs_effect_handler.dart';
import 'tabs_update.dart';

typedef TabsFeature = Feature<TabsState, TabsMessage, TabsEffect>;

TabsFeature tabsFeatureFactory({
  required ToolsRegistry toolsRegistry,
}) {
  return TabsFeature(
    initialState: TabsState.initial,
    update: tabsUpdate,
    effectHandlers: [TabsEffectHandler(toolsRegistry: toolsRegistry)],
  );
}
