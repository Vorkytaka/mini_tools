import 'package:flutter/material.dart';

import '../../tool/base_tool.dart';
import 'text_diff_tool_screen.dart';

final textDiffTool = BaseTool(
  titleBuilder: (context) => 'Text Diff',
  icon: Icons.abc,
  screenBuilder: (context) => const TextDiffScreen(),
);
