import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../core/common/color.dart';
import '../../core/presentation/copy_overlay.dart';
import '../../i18n/strings.g.dart';
import '../../tool/base_tool.dart';
import '../../tool/tool.dart';

part 'material_color_domain.dart';

part 'material_color_ui.dart';

final class MaterialColorsTool {
  const MaterialColorsTool._();

  static const id = 'material_colors';

  static Tool shared = BaseTool(
    titleBuilder: (context) => Translations.of(context).materialColors.title,
    icon: Icons.invert_colors_sharp,
    screenBuilder: (context) => const MaterialColorsToolScreen(),
  );
}
