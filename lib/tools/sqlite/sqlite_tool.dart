import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import 'feature/sqlite_feature.dart';
import 'sqlite.dart';

final sqliteTool = FeatureTool(
  titleBuilder: (context) => Translations.of(context).sqlite.title,
  icon: Icons.table_chart,
  screenBuilder: (context) => const SqliteTool(),
  feature: sqliteFeatureFactory()..init(),
);
