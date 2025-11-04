import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/json_feature.dart';
import 'presentation/json_formatter_screen.dart';

final class JsonFormatterToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'json_formatter_tool',
    metadata: ToolMetadata(icon: Icons.data_object, isAvailable: true),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: jsonFormatterFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).jsonFormatter.title;

  static Widget _buildScreen(BuildContext context) {
    return const JsonFormatterScreen();
  }
}
