import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'feature/regexp_feature.dart';
import 'regexp.dart';

final regExpTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).regexp.title,
  icon: Icons.manage_search,
  screenBuilder: (context) => const RegExpTool(),
  feature: regExpFeatureFactory()..init(),
);
