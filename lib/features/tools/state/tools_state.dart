import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tool/tool.dart';
import '../../../tools/blurhash/blurhash_tool.dart';
import '../../../tools/color/color_tool.dart';
import '../../../tools/cron/cron_tool.dart';
import '../../../tools/datetime_converter/datetime_converter_tool.dart';
import '../../../tools/hash/hash_tool.dart';
import '../../../tools/json_formatter/json_formatter_tool.dart';
import '../../../tools/material_color/material_colors_tool.dart';
import '../../../tools/number_base_converter/number_base_converter_tool.dart';
import '../../../tools/percentages_tool.dart';
import '../../../tools/qr_code/qr_code_tool.dart';
import '../../../tools/regexp/regexp_tool.dart';
import '../../../tools/sqlite/sqlite_tool.dart';
import '../../../tools/text_diff/text_diff_tool.dart';
import '../../../tools/uuid/uuid_tool.dart';

part 'tools_state.freezed.dart';

enum Tools {
  datetime,
  jsonFormatter,
  regExp,
  numberBase,
  percentage,
  colorConverter,
  materialColor,
  hashCalculator,
  sqlite,
  uuid,
  cron,
  textDiff,
  qrCode,
  blurhash,
}

extension ToolsToTool on Tools {
  Tool get tool {
    return switch (this) {
      Tools.datetime => datetimeTool,
      Tools.jsonFormatter => jsonFormatterTool,
      Tools.regExp => regExpTool,
      Tools.numberBase => numberBaseConverterTool,
      Tools.percentage => percentagesTool,
      Tools.colorConverter => colorTool,
      Tools.materialColor => materialColorTool,
      Tools.hashCalculator => hashTool,
      Tools.sqlite => sqliteTool,
      Tools.uuid => uuidTool,
      Tools.cron => cronTool,
      Tools.textDiff => textDiffTool,
      Tools.qrCode => qrCodeTool,
      Tools.blurhash => blurhashTool,
    };
  }
}

@freezed
@immutable
class ToolsState with _$ToolsState {
  const factory ToolsState({
    required Tools selectedTool,
    required List<Tools> tools,
    required String searchQuery,
    required List<Tools> searchResult,
  }) = _ToolsState;

  static ToolsState defaultValue = ToolsState(
    selectedTool: Tools.values.first,
    tools: Tools.values,
    searchQuery: '',
    searchResult: List.empty(growable: false),
  );
}
