import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'feature/number_base_feature.dart';
import 'number_base_converter.dart';

final class NumberBaseConverterTool {
  const NumberBaseConverterTool._();

  static const id = 'number_base_converter';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).numberConverter.title,
    icon: Icons.numbers,
    screenBuilder: (context) => const NumberBaseConverter(),
    feature: numberBaseFeatureFactory()..init(),
  );
}
