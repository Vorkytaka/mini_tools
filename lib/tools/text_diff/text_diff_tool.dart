import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import 'feature/text_diff_feature.dart';
import 'text_diff_tool_screen.dart';

final textDiffTool = FeatureTool(
  titleBuilder: (context) => 'Text Diff',
  icon: Icons.abc,
  screenBuilder: (context) => const TextDiffScreen(),
  feature: textDiffFeatureFactory()..init(),
);
