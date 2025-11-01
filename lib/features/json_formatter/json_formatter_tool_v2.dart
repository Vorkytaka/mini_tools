import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/json_feature.dart';
import 'presentation/json_formatter_screen.dart';

final class JsonFormatterToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'json_formatter_tool',
    metadata: const ToolMetadata(
      icon: Icons.branding_watermark,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).jsonFormatter.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: jsonFormatterFeatureFactory,
      screenBuilder: (context) => const JsonFormatterScreen(),
    ),
  );
}
