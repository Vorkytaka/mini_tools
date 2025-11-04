import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/sqlite_feature.dart';
import 'presentation/sqlite.dart';

final class SqliteToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'sqlite',
    metadata: ToolMetadata(icon: Icons.table_chart, isAvailable: kDebugMode),
    localizationData: ToolLocalizationData(titleDelegate: _titleDelegate),
    factory: FeatureToolFactory(
      featureBuilder: sqliteFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).sqlite.title;

  static Widget _buildScreen(BuildContext context) {
    return const SqliteToolScreen();
  }
}
