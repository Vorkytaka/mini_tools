import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import 'feature/uuid_feature.dart';
import 'uuid_tool_screen.dart';

final uuidTool = FeatureTool(
  titleBuilder: (context) => 'UUID Generator',
  icon: Icons.perm_identity,
  screenBuilder: (context) => const UuidToolScreen(),
  feature: uuidFeatureFactory(),
);
