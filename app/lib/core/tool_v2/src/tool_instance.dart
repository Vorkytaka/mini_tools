import 'package:flutter/widgets.dart';

abstract interface class ToolInstance {
  Widget buildScreen(BuildContext context);

  Future<void> init();

  Future<void> dispose();
}
