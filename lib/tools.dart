import 'tool/tool.dart';
import 'tools/cron/cron_tool.dart';
import 'tools/datetime_converter/datetime_converter_tool.dart';
import 'tools/json_formatter/json_formatter_tool.dart';
import 'tools/qr_code/qr_code_tool.dart';

class ToolsRegistry {
  static final _tools = <String, Tool>{
    DatetimeConverterTool.id: DatetimeConverterTool.shared,
    JsonFormatterTool.id: JsonFormatterTool.shared,
    CronTool.id: CronTool.shared,
    QrCodeTool.id: QrCodeTool.shared,
  };

  static List<Tool> tools = List.unmodifiable(_tools.values);

  static Tool? toolById(String id) => _tools[id];
}
