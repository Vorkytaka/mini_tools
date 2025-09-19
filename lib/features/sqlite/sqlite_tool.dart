import 'package:flutter/material.dart';

import '../../core/tool/impl/feature_tool.dart';
import '../../core/tool/tool.dart';
import '../../i18n/strings.g.dart';
import 'domain/sqlite_feature.dart';
import 'presentation/sqlite.dart';

final class SqliteTool {
  const SqliteTool._();

  static const id = 'sqlite';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).sqlite.title,
    icon: Icons.table_chart,
    screenBuilder: (context) => const SqliteToolScreen(),
    feature: sqliteFeatureFactory()..init(),
  );
}
