import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../common/color.dart';
import '../../i18n/strings.g.dart';
import '../../tool/base_tool.dart';

part 'material_color_domain.dart';
part 'material_color_ui.dart';

final materialColorTool = BaseTool(
  titleBuilder: (context) => Translations.of(context).materialColors.title,
  icon: Icons.invert_colors_sharp,
  screenBuilder: (context) => const MaterialColorTool(),
);
