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
  static final descriptor = ToolDescriptor(
    id: 'sqlite',
    metadata: const ToolMetadata(
      icon: Icons.hardware,
      isAvailable: kDebugMode,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).sqlite.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: sqliteFeatureFactory,
      screenBuilder: (context) => const SqliteToolScreen(),
    ),
  );
}
