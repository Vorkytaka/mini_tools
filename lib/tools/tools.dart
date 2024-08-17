import 'package:flutter/material.dart';
import 'package:mini_tools/tools/unix_timestamp.dart';

import 'reg_exp_tool.dart';

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
  regExpTool,
];

final debugTool = Tool(
  title: 'Debug',
  icon: Icons.developer_mode,
  screenBuilder: (context) => const Center(child: Text('Debug')),
);

final unixTimestampTool = Tool(
  title: 'Unix timestamp',
  icon: Icons.timelapse,
  screenBuilder: (context) => const UnixTimestampToolWidget(),
);
