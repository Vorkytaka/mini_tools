import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'percentages_tool.dart';

final class PercentagesToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'percentages_tool',
    metadata: const ToolMetadata(
      icon: Icons.percent,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) =>
          Translations.of(context).percentageCalculator.title,
    ),
    factory: StatelessToolFactory(
      screenBuilder: (context) => const PercentagesToolScreen(),
    ),
  );
}
