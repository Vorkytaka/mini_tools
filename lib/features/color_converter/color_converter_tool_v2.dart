import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'color_cubit.dart';
import 'color_tool.dart';

final class ColorConverterToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'color_converter',
    metadata: const ToolMetadata(
      icon: Icons.color_lens_outlined,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).color.title,
    ),
    factory: BlocToolFactory(
      blocBuilder: ColorCubit.new,
      screenBuilder: (context) => const ColorToolScreen(),
    ),
  );
}
