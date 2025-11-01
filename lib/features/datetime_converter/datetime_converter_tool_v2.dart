import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/datetime_converter_feature.dart';
import 'presentation/datetime_converter_screen.dart';

final class DatetimeConverterToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'datetime_converter',
    metadata: const ToolMetadata(
      icon: Icons.timelapse,
      isAvailable: true,
    ),
    localizationData: const ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: datetimeConverterFeatureFactory,
      screenBuilder: (context) => const DatetimeConverterScreen(),
    ),
  );

  static String _titleDelegate(BuildContext context) {
    return Translations.of(context).datetimeConverter.title;
  }
}
