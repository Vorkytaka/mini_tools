import 'package:flutter/material.dart';

import '../../tool_v2.dart';

final class StatelessToolFactory implements ToolFactory {
  const StatelessToolFactory({required this.screenBuilder});

  final WidgetBuilder screenBuilder;

  @override
  ToolInstance create() {
    return _StatelessToolInstance(screenBuilder: screenBuilder);
  }
}

final class _StatelessToolInstance implements ToolInstance {
  final WidgetBuilder screenBuilder;

  const _StatelessToolInstance({required this.screenBuilder});

  @override
  Widget buildScreen(BuildContext context) {
    return screenBuilder(context);
  }

  @override
  Future<void> dispose() async {}

  @override
  Future<void> init() async {}
}
