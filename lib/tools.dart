import 'tool/tool.dart';
import 'tools/color/color_tool.dart';
import 'tools/cron/cron_tool.dart';
import 'tools/datetime_converter/datetime_converter_tool.dart';
import 'tools/hash/hash_tool.dart';
import 'tools/json_formatter/json_formatter_tool.dart';
import 'tools/material_color/material_colors_tool.dart';
import 'tools/number_base_converter/number_base_converter_tool.dart';
import 'tools/percentages_tool.dart';
import 'tools/qr_code/qr_code_tool.dart';
import 'tools/regexp/regexp_tool.dart';
import 'tools/sqlite/sqlite_tool.dart';
import 'tools/text_diff/text_diff_tool.dart';
import 'tools/uuid/uuid_tool.dart';

class ToolsRegistry {
  static final _tools = <String, Tool>{
    DatetimeConverterTool.id: DatetimeConverterTool.shared,
    JsonFormatterTool.id: JsonFormatterTool.shared,
    RegExpTool.id: RegExpTool.shared,
    NumberBaseConverterTool.id: NumberBaseConverterTool.shared,
    PercentagesTool.id: PercentagesTool.shared,
    ColorConverterTool.id: ColorConverterTool.shared,
    MaterialColorsTool.id: MaterialColorsTool.shared,
    HashCalculatorTool.id: HashCalculatorTool.shared,
    SqliteTool.id: SqliteTool.shared,
    UuidTool.id: UuidTool.shared,
    CronTool.id: CronTool.shared,
    TextDiffTool.id: TextDiffTool.shared,
    QrCodeTool.id: QrCodeTool.shared,
  };

  static List<String> toolIds = List.unmodifiable(_tools.keys);

  static Tool? toolById(String id) => _tools[id];
}
