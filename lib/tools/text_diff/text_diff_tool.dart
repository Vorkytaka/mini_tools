import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'feature/text_diff_feature.dart';
import 'text_diff_tool_screen.dart';

final class TextDiffTool {
  const TextDiffTool._();

  static const id = 'text_diff';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).textDiff.title,
    icon: Icons.abc,
    screenBuilder: (context) => const TextDiffScreen(),
    feature: textDiffFeatureFactory()..init(),
  );
}
