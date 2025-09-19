import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'domain/cron_feature.dart';
import 'presentation/cron_tool_screen.dart';

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
