import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/regexp_feature.dart';
import 'presentation/regexp.dart';

final class RegexpToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'regexp_tool',
    metadata: const ToolMetadata(
      icon: Icons.text_decrease,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).regexp.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: regExpFeatureFactory,
      screenBuilder: (context) => const RegExpToolScreen(),
    ),
  );
}
