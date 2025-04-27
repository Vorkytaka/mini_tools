import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'cron_tool_screen.dart';
import 'feature/cron_feature.dart';

final class CronTool {
  const CronTool._();

  static const id = 'cron';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => 'Cron parser',
    icon: Icons.schedule,
    screenBuilder: (context) => const CronToolScreen(),
    feature: cronFeatureFactory()..init(),
  );
}
