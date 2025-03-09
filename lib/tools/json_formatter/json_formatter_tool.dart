import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'feature/json_feature.dart';
import 'ui/json_formatter_screen.dart';

final jsonFormatterTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).jsonFormatter.title,
  icon: Icons.data_object,
  screenBuilder: (context) => const JsonFormatterScreen(),
  feature: jsonFormatterFeatureFactory()..init(),
);
