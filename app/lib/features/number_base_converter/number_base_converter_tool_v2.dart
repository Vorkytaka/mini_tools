import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/number_base_feature.dart';
import 'presentation/number_base_converter.dart';

final class NumberBaseConverterToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'number_base_converter',
    metadata: ToolMetadata(icon: Icons.numbers, isAvailable: true),
    localizationData: ToolLocalizationData(titleDelegate: _titleDelegate),
    factory: FeatureToolFactory(
      featureBuilder: numberBaseFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).numberConverter.title;

  static Widget _buildScreen(BuildContext context) {
    return const NumberBaseConverterScreen();
  }
}
