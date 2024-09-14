import 'package:flutter/material.dart';

import 'color_tool.dart';
import 'json_formatter.dart';
import 'locale_tool.dart';
import 'material_colors_tool.dart';
import 'number_base_converter.dart';
import 'percentages_tool.dart';
import 'reg_exp_tool.dart';
import 'unix_timestamp.dart';

typedef TitleBuilder = String Function(BuildContext context);

class Tool {
  final TitleBuilder titleBuilder;
  final IconData icon;
  final WidgetBuilder screenBuilder;

  const Tool({
    required this.titleBuilder,
    required this.icon,
    required this.screenBuilder,
  });
}

final tools = <Tool>[
  debugTool,
  unixTimestampTool,
  jsonFormatterTool,
  regExpTool,
  numberBaseConverterTool,
  percentagesTool,
  colorTool,
  materialColorTool,
  localeTool,
];

final debugTool = Tool(
  titleBuilder: (context) => 'Debug',
  icon: Icons.developer_mode,
  screenBuilder: (context) => const Center(child: Text('Debug')),
);
