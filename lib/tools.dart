import 'package:flutter/foundation.dart';

import 'tool/tool.dart';
import 'features/color_converter/color_tool.dart';
import 'features/cron/cron_tool.dart';
import 'features/datetime_converter/datetime_converter_tool.dart';
import 'features/hash/hash_tool.dart';
import 'features/json_formatter/json_formatter_tool.dart';
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
    if (kDebugMode) RegExpTool.id: RegExpTool.shared,
    NumberBaseConverterTool.id: NumberBaseConverterTool.shared,
    if (kDebugMode) PercentagesTool.id: PercentagesTool.shared,
    if (kDebugMode) ColorConverterTool.id: ColorConverterTool.shared,
    if (kDebugMode) MaterialColorsTool.id: MaterialColorsTool.shared,
    if (kDebugMode) HashCalculatorTool.id: HashCalculatorTool.shared,
    if (kDebugMode) SqliteTool.id: SqliteTool.shared,
    if (kDebugMode) UuidTool.id: UuidTool.shared,
    CronTool.id: CronTool.shared,
    if (kDebugMode) TextDiffTool.id: TextDiffTool.shared,
    QrCodeTool.id: QrCodeTool.shared,
  };

  static List<String> toolIds = List.unmodifiable(_tools.keys);

  static Tool? toolById(String id) => _tools[id];
}
