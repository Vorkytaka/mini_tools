import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'material_colors_tool.dart';

final class MaterialColorsToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'material_colors_tool',
    metadata: const ToolMetadata(
      icon: Icons.import_contacts,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).materialColors.title,
    ),
    factory: StatelessToolFactory(
      screenBuilder: (context) => const MaterialColorsToolScreen(),
    ),
  );
}
