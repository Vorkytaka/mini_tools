import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../core/tool/impl/feature_tool.dart';
import '../../core/tool/tool.dart';
import 'domain/regexp_feature.dart';
import 'presentation/regexp.dart';

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
