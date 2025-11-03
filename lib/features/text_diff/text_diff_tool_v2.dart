import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/text_diff_feature.dart';
import 'presentation/text_diff_tool_screen.dart';

final class TextDiffToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'text_diff',
    metadata: ToolMetadata(icon: Icons.difference, isAvailable: kDebugMode),
    localizationData: ToolLocalizationData(titleDelegate: _titleDelegate),
    factory: FeatureToolFactory(
      featureBuilder: textDiffFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).textDiff.title;

  static Widget _buildScreen(BuildContext context) {
    return const TextDiffScreen();
  }
}
