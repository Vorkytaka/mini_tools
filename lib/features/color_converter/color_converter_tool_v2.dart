import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'color_cubit.dart';
import 'color_screen.dart';

final class ColorConverterToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'color_converter',
    metadata: ToolMetadata(
      icon: Icons.color_lens_outlined,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: BlocToolFactory(
      blocBuilder: ColorCubit.new,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).color.title;

  static Widget _buildScreen(BuildContext context) {
    return const ColorToolScreen();
  }
}
