import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/bloc_tool.dart';
import 'regexp.dart';
import 'regexp_cubit.dart';

final regExpTool = BlocTool(
  titleBuilder: (context) => Translations.of(context).regexp.title,
  icon: Icons.manage_search,
  screenBuilder: (context) => const RegExpTool(),
  bloc: RegExpCubit(),
);
