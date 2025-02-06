import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import 'cron_tool_screen.dart';
import 'feature/cron_feature.dart';

final cronTool = FeatureTool(
  titleBuilder: (context) => 'Cron parser',
  icon: Icons.schedule,
  screenBuilder: (context) => const CronToolScreen(),
  feature: cronFeatureFactory()..init(),
);
