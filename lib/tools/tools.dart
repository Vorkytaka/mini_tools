import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_tool.dart';
import 'hash.dart';
import 'json_formatter.dart';
import 'material_colors_tool.dart';
import 'number_base_converter.dart';
import 'percentages_tool.dart';
import 'reg_exp_tool.dart';
import 'sqlite/sqlite.dart';
import 'unix_timestamp.dart';

typedef TitleBuilder = String Function(BuildContext context);

abstract interface class Tool {
  String buildTitle(BuildContext context);

  IconData get icon;

  Widget buildScreen(BuildContext context);
}

class BaseTool implements Tool {
  final TitleBuilder titleBuilder;
  @override
  final IconData icon;
  final WidgetBuilder screenBuilder;

  const BaseTool({
    required this.titleBuilder,
    required this.icon,
    required this.screenBuilder,
  });

  @override
  String buildTitle(BuildContext context) => titleBuilder(context);

  @override
  Widget buildScreen(BuildContext context) => screenBuilder(context);
}

class BlocTool<B extends BlocBase<S>, S> extends BaseTool {
  final B bloc;

  const BlocTool({
    required super.titleBuilder,
    required super.icon,
    required super.screenBuilder,
    required this.bloc,
  });

  @override
  Widget buildScreen(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Builder(builder: screenBuilder),
    );
  }
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
  hashTool,
  sqliteTool,
];

final debugTool = BaseTool(
  titleBuilder: (context) => 'Debug',
  icon: Icons.developer_mode,
  screenBuilder: (context) => const Center(child: Text('Debug')),
);
