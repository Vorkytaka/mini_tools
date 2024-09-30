import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/bloc_tool.dart';
import 'hash.dart';
import 'hash_bloc.dart';

final hashTool = BlocTool<HashCubit, HashState>(
  titleBuilder: (context) => Translations.of(context).hash.title,
  icon: Icons.qr_code_2,
  screenBuilder: (context) => const HashTool(),
  bloc: HashCubit(),
);
