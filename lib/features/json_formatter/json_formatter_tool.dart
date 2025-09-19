import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'domain/json_feature.dart';
import 'presentation/json_formatter_screen.dart';

final class JsonFormatterTool {
  const JsonFormatterTool._();

  static const id = 'json_formatter';

  static bool get isEnabled => true;

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).jsonFormatter.title,
    icon: Icons.data_object,
    screenBuilder: (context) => const JsonFormatterScreen(),
    feature: jsonFormatterFeatureFactory()..init(),
  );
}
