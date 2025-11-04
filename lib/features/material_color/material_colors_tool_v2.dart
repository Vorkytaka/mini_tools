import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'material_color_ui.dart';

final class MaterialColorsToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'material_colors_tool',
    metadata: ToolMetadata(icon: Icons.invert_colors_sharp, isAvailable: true),
    localizationData: ToolLocalizationData(titleDelegate: _titleDelegate),
    factory: StatelessToolFactory(screenBuilder: _buildScreen),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).materialColors.title;

  static Widget _buildScreen(BuildContext context) {
    return const MaterialColorsToolScreen();
  }
}
