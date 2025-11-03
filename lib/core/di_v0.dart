import 'package:flutter/cupertino.dart';

import '../features/color_converter/color_converter_tool_v2.dart';
import '../features/cron/cron_tool_v2.dart';
import '../features/datetime_converter/datetime_converter_tool_v2.dart';
import '../features/hash/hash_tool_v2.dart';
import '../features/json_formatter/json_formatter_tool_v2.dart';
import '../features/material_color/material_colors_tool_v2.dart';
import '../features/number_base_converter/number_base_converter_tool_v2.dart';
import '../features/percentages_calculator/percentages_tool_v2.dart';
import '../features/qr_code_generator/qr_code_generator_tool_v2.dart';
import '../features/regexp/regexp_tool_v2.dart';
import '../features/sqlite/sqlite_tool_v2.dart';
import '../features/tabs/domain/tab_manager.dart';
import '../features/tabs/domain/tabs_feature.dart';
import '../features/tabs/presentation/tab_view_widget.dart';
import '../features/tabs/presentation/tabs_list_widget.dart';
import '../features/text_diff/text_diff_tool_v2.dart';
import '../features/uuid_generator/uuid_tool_v2.dart';
import 'tool_v2/src/tool_registry.dart';

abstract interface class Initializable {
  Future<void> init();

  Future<void> dispose();
}

abstract interface class MiniDepTree implements Initializable {
  ToolsRegistry get toolsRegistry;

  TabManager get tabManager;

  TabsFeature get tabsFeature;

  // TODO
  TabsListWidget tabsListWidgetFactory({
    required ScrollController scrollController,
  });

  TabViewWidget tabViewWidgetFactory() {
    return TabViewWidget(
      manager: tabManager,
    );
  }
}

final class DepTreeV0 implements MiniDepTree {
  DepTreeV0();

  @override
  late final toolsRegistry = ToolsRegistry(
    tools: [
      DatetimeConverterToolV2.descriptor,
      UuidToolV2.descriptor,
      TextDiffToolV2.descriptor,
      SqliteToolV2.descriptor,
      QrCodeGeneratorToolV2.descriptor,
      CronToolV2.descriptor,
      ColorConverterToolV2.descriptor,
      HashToolV2.descriptor,
      JsonFormatterToolV2.descriptor,
      MaterialColorsToolV2.descriptor,
      NumberBaseConverterToolV2.descriptor,
      PercentagesToolV2.descriptor,
      RegexpToolV2.descriptor,
    ],
  );

  @override
  late final tabManager = TabManager(
    toolsRegistry: toolsRegistry,
  );

  @override
  TabsListWidget tabsListWidgetFactory({
    required ScrollController scrollController,
  }) {
    return TabsListWidget(
      controller: scrollController,
      manager: tabManager,
    );
  }

  @override
  TabViewWidget tabViewWidgetFactory() {
    return TabViewWidget(
      manager: tabManager,
    );
  }

  @override
  late final tabsFeature = tabsFeatureFactory(
    toolsRegistry: toolsRegistry,
  );

  @override
  Future<void> dispose() async {
    await tabsFeature.dispose();
  }

  @override
  Future<void> init() async {
    await tabsFeature.init();
  }
}
