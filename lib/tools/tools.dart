import 'package:flutter/material.dart';

import '../tool/base_tool.dart';
import '../tool/tool.dart';
import 'color/color_tool.dart';
import 'cron/cron_tool.dart';
import 'datetime/datetime_tool.dart';
import 'hash/hash_tool.dart';
import 'json/json_formatter.dart';
import 'material_color/material_colors_tool.dart';
import 'number_base_converter/number_base_converter_tool.dart';
import 'percentages_tool.dart';
import 'regexp/regexp_tool.dart';
import 'sqlite/sqlite_tool.dart';
import 'text_diff/text_diff_tool.dart';
import 'uuid/uuid_tool.dart';

final tools = <Tool>[
  debugTool,
  datetimeTool,
  jsonFormatterTool,
  regExpTool,
  numberBaseConverterTool,
  percentagesTool,
  colorTool,
  materialColorTool,
  hashTool,
  sqliteTool,
  uuidTool,
  cronTool,
  textDiffTool,
];

final debugTool = BaseTool(
  titleBuilder: (context) => 'Debug',
  icon: Icons.developer_mode,
  screenBuilder: (context) => const Center(child: Text('Debug')),
);
