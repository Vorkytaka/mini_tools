import 'package:flutter/widgets.dart';

import 'tool.dart';

typedef TitleBuilder = String Function(BuildContext context);

class BaseTool implements Tool {
  final TitleBuilder titleBuilder;

  final WidgetBuilder screenBuilder;

  @override
  final IconData icon;

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
