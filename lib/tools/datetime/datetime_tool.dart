import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/bloc_tool.dart';
import 'datetime.dart';
import 'datetime_cubit.dart';

final datetimeTool = BlocTool(
  titleBuilder: (context) => Translations.of(context).unixTimestamp.title,
  icon: Icons.timelapse,
  screenBuilder: (context) => const UnixTimestampToolWidget(),
  bloc: DatetimeCubit(),
);
