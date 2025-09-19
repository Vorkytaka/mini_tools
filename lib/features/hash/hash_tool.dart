import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'domain/src/hash_feature.dart';
import 'presentation/hash_screen.dart';

final class HashCalculatorTool {
  const HashCalculatorTool._();

  static const id = 'hash';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).hash.title,
    icon: Icons.qr_code_2,
    screenBuilder: (context) => const HashToolScreen(),
    feature: hashFeatureFactory()..init(),
  );
}
