import 'package:flutter/material.dart';

import 'json_formatter.dart';
import 'number_base_converter.dart';
import 'reg_exp_tool.dart';
import 'unix_timestamp.dart';

class Tool {
  final String title;
  final IconData icon;
  final WidgetBuilder screenBuilder;

  const Tool({
    required this.title,
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
];

final debugTool = Tool(
  title: 'Debug',
  icon: Icons.developer_mode,
  screenBuilder: (context) => const Center(child: Text('Debug')),
);
