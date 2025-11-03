import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/datetime_converter_feature.dart';
import 'presentation/datetime_converter_screen.dart';

final class DatetimeConverterToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'datetime_converter',
    metadata: ToolMetadata(
      icon: Icons.timelapse,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: datetimeConverterFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) {
    return Translations.of(context).datetimeConverter.title;
  }

  static Widget _buildScreen(BuildContext context) {
    return const DatetimeConverterScreen();
  }
}
