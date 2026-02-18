import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_tea_time_travel_devtools_extension/time_travel/time_travel_screen.dart';

void main() {
  runApp(const SomePkgDevToolsExtension());
}

class SomePkgDevToolsExtension extends StatelessWidget {
  const SomePkgDevToolsExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: TimeTravelScreen(), // Build your extension here
    );
  }
}
