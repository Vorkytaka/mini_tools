import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mini_tea_time_travel_devtools_extension/time_travel/time_travel_screen.dart';

void main() {
  runApp(const MiniTeaTimeTravelDevToolsExtension());
}

class MiniTeaTimeTravelDevToolsExtension extends StatelessWidget {
  const MiniTeaTimeTravelDevToolsExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: TimeTravelScreen(),
    );
  }
}
