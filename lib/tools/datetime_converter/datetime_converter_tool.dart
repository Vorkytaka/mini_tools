import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timezone/timezone.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'datetime_converter_screen.dart';
import 'datetime_cubit.dart';
import 'feature/datetime_converter_feature.dart';

final datetimeTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).datetimeConverter.title,
  icon: Icons.timelapse,
  screenBuilder: (context) => const DatetimeConverterScreen(),
  feature: datetimeConverterFeatureFactory()..init(),
);

Widget buildDatetimeTool(TZDateTime datetime) {
  return BlocProvider(
    create: (context) => DatetimeCubit(initialDateTime: datetime),
    child: const DatetimeConverterScreen(),
  );
}

Future<void> showDatetimeConverterSheet({
  required BuildContext context,
  required DateTime datetime,
}) {
  throw Exception();
}
