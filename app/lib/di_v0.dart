import 'core/tool_v2/src/tool_registry.dart';
import 'features/color_converter/color_converter_tool_v2.dart';
import 'features/cron/cron_tool_v2.dart';
import 'features/datetime_converter/datetime_converter_tool_v2.dart';
import 'features/hash/hash_tool_v2.dart';
import 'features/json_formatter/json_formatter_tool_v2.dart';
import 'features/material_color/material_colors_tool_v2.dart';
import 'features/number_base_converter/number_base_converter_tool_v2.dart';
import 'features/percentages_calculator/percentages_tool_v2.dart';
import 'features/qr_code_generator/qr_code_generator_tool_v2.dart';
import 'features/regexp/regexp_tool_v2.dart';
import 'features/sqlite/sqlite_tool_v2.dart';
import 'features/tabs/tabs_di.dart';
import 'features/text_diff/text_diff_tool_v2.dart';
import 'features/uuid_generator/uuid_tool_v2.dart';

abstract interface class Initializable {
  Future<void> init();

  Future<void> dispose();
}

abstract interface class MiniDi implements Initializable {
  factory MiniDi() = _DepTreeV0;

  ToolsRegistry get toolsRegistry;

  TabsDi get tabsDi;
}

final class _DepTreeV0 implements MiniDi {
  _DepTreeV0();

  @override
  late final toolsRegistry = ToolsRegistry(
    tools: const [
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
  late final TabsDi tabsDi = TabsDi(
    depTree: this,
  );

  @override
  Future<void> dispose() async {
    await tabsDi.dispose();
  }

  @override
  Future<void> init() async {
    await tabsDi.init();
  }
}
