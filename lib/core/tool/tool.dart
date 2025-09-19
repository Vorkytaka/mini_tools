import 'package:flutter/widgets.dart';

abstract interface class Tool {
  String buildTitle(BuildContext context);

  IconData get icon;

  Widget buildScreen(BuildContext context);
}
