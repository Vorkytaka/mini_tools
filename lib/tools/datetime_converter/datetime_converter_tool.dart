import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'datetime_converter_screen.dart';
import 'feature/datetime_converter_feature.dart';

final datetimeTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).datetimeConverter.title,
  icon: Icons.timelapse,
  screenBuilder: (context) => const DatetimeConverterScreen(),
  feature: datetimeConverterFeatureFactory()..init(),
);

Future<void> showDatetimeConverterSheet({
  required BuildContext context,
  required DateTime datetime,
}) {
  return showMacosSheet(
    context: context,
    barrierDismissible: true,
    builder: (context) => FeatureProvider.create(
      create: (context) => datetimeConverterFeatureFactory(
        initialDatetime: datetime,
      ),
      child: const MacosSheet(
        child: DatetimeConverterScreen(),
      ),
    ),
  );
}
