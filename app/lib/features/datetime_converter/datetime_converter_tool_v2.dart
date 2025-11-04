import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

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

  // TODO: Migrate to new tab system
  static Future<void> showDatetimeConverterSheet({
    required BuildContext context,
    required DateTime datetime,
  }) {
    return showMacosSheet(
      context: context,
      barrierDismissible: true,
      builder: (context) => FeatureProvider.create(
        create: (context) =>
            datetimeConverterFeatureFactory(initialDatetime: datetime),
        child: const MacosSheet(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            clipBehavior: Clip.hardEdge,
            child: DatetimeConverterScreen(),
          ),
        ),
      ),
    );
  }
}
