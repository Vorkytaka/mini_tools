import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/cron_feature.dart';
import 'presentation/cron_tool_screen.dart';

final class CronToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'cron_tool',
    metadata: const ToolMetadata(
      icon: Icons.watch_later,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).cron.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: cronFeatureFactory,
      screenBuilder: (context) => const CronToolScreen(),
    ),
  );
}
