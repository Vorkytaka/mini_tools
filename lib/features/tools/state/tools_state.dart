import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../tool/tool.dart';
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

part 'tools_state.g.dart';

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
}

extension ToolsToTool on Tools {
  Tool get tool {
    return switch (this) {
      Tools.datetime => DatetimeConverterTool.shared,
      Tools.jsonFormatter => JsonFormatterTool.shared,
      Tools.regExp => RegExpTool.shared,
      Tools.numberBase => NumberBaseConverterTool.shared,
      Tools.percentage => PercentagesTool.shared,
      Tools.colorConverter => ColorConverterTool.shared,
      Tools.materialColor => MaterialColorsTool.shared,
      Tools.hashCalculator => HashTool.shared,
      Tools.sqlite => SqliteTool.shared,
      Tools.uuid => UuidTool.shared,
      Tools.cron => CronTool.shared,
      Tools.textDiff => TextDiffTool.shared,
      Tools.qrCode => QrCodeTool.shared,
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

  factory ToolsState.fromJson(Map<String, dynamic> json) =>
      _$ToolsStateFromJson(json);
}
