import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'feature/regexp_feature.dart';
import 'regexp.dart';

final class RegExpTool {
  const RegExpTool._();

  static const id = 'reg_exp';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).regexp.title,
    icon: Icons.manage_search,
    screenBuilder: (context) => const RegExpToolScreen(),
    feature: regExpFeatureFactory()..init(),
  );
}
