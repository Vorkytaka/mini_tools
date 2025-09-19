import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

import '../../i18n/strings.g.dart';
import '../../core/tool/impl/feature_tool.dart';
import '../../core/tool/tool.dart';
import 'domain/datetime_converter_feature.dart';
import 'presentation/datetime_converter_screen.dart';

final class DatetimeConverterTool {
  const DatetimeConverterTool._();

  static const id = 'datetime_converter';

  static bool get isEnabled => true;

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).datetimeConverter.title,
    icon: Icons.timelapse,
    screenBuilder: (context) => const DatetimeConverterScreen(),
    feature: datetimeConverterFeatureFactory()..init(),
  );

  static Future<void> showDatetimeConverterSheet({
    required BuildContext context,
    required DateTime datetime,
  }) {
    return showMacosSheet(
      context: context,
      barrierDismissible: true,
      builder:
          (context) => FeatureProvider.create(
            create:
                (context) =>
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
