import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/bloc_tool.dart';
import 'sqlite.dart';
import 'sqlite_bloc.dart';

final sqliteTool = BlocTool<SqliteCubit, SqliteState>(
  titleBuilder: (context) => Translations.of(context).sqlite.title,
  icon: Icons.table_chart,
  screenBuilder: (context) => const SqliteTool(),
  bloc: SqliteCubit()..init(),
);
