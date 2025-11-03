import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'percentages_tool.dart';

final class PercentagesToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'percentages_tool',
    metadata: ToolMetadata(icon: Icons.percent, isAvailable: true),
    localizationData: ToolLocalizationData(titleDelegate: _titleDelegate),
    factory: StatelessToolFactory(screenBuilder: _buildScreen),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).percentageCalculator.title;

  static Widget _buildScreen(BuildContext context) {
    return const PercentagesToolScreen();
  }
}
