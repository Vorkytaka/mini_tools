import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'feature/uuid_feature.dart';
import 'uuid_tool_screen.dart';

final uuidTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).uuidGenerator.title,
  icon: Icons.perm_identity,
  screenBuilder: (context) => const UuidToolScreen(),
  feature: uuidFeatureFactory()..init(),
);
