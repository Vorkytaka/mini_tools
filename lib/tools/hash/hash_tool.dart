import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'feature/src/hash_feature.dart';
import 'hash.dart';

final hashTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).hash.title,
  icon: Icons.qr_code_2,
  screenBuilder: (context) => const HashTool(),
  feature: hashFeatureFactory()..init(),
);
