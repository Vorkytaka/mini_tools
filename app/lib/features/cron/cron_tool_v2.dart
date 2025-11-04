import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/cron_feature.dart';
import 'presentation/cron_tool_screen.dart';

final class CronToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'cron_tool',
    metadata: ToolMetadata(
      icon: Icons.schedule,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: cronFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).cron.title;

  static Widget _buildScreen(BuildContext context) {
    return const CronToolScreen();
  }
}
