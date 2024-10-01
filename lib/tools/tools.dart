import 'package:flutter/material.dart';

import '../tool/base_tool.dart';
import '../tool/tool.dart';
import 'color_tool.dart';
import 'hash/hash_tool.dart';
import 'json_formatter.dart';
import 'material_colors_tool.dart';
import 'number_base_converter.dart';
import 'percentages_tool.dart';
import 'reg_exp_tool.dart';
import 'sqlite/sqlite_tool.dart';
import 'unix_timestamp.dart';

final tools = <Tool>[
  debugTool,
  unixTimestampTool,
  jsonFormatterTool,
  regExpTool,
  numberBaseConverterTool,
  percentagesTool,
  colorTool,
  materialColorTool,
  hashTool,
  sqliteTool,
];

final debugTool = BaseTool(
  titleBuilder: (context) => 'Debug',
  icon: Icons.developer_mode,
  screenBuilder: (context) => const Center(child: Text('Debug')),
);
