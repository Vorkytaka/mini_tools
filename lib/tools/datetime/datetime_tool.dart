import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timezone/timezone.dart';

import '../../i18n/strings.g.dart';
import '../../tool/bloc_tool.dart';
import 'datetime.dart';
import 'datetime_cubit.dart';

final datetimeTool = BlocTool(
  titleBuilder: (context) => Translations.of(context).datetimeConverter.title,
  icon: Icons.timelapse,
  screenBuilder: (context) => const UnixTimestampToolWidget(),
  bloc: DatetimeCubit(),
);

Widget buildDatetimeTool(TZDateTime datetime) {
  return BlocProvider(
    create: (context) => DatetimeCubit(initialDateTime: datetime),
    child: const UnixTimestampToolWidget(),
  );
}
