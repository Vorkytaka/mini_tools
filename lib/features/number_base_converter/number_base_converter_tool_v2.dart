import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/number_base_feature.dart';
import 'presentation/number_base_converter.dart';

final class NumberBaseConverterToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'number_base_converter',
    metadata: const ToolMetadata(
      icon: Icons.numbers,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) =>
          Translations.of(context).numberConverter.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: numberBaseFeatureFactory,
      screenBuilder: (context) => const NumberBaseConverterScreen(),
    ),
  );
}
