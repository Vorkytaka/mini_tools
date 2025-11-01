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
  static final descriptor = ToolDescriptor(
    id: 'text_diff',
    metadata: const ToolMetadata(
      icon: Icons.difference,
      isAvailable: kDebugMode,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).textDiff.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: textDiffFeatureFactory,
      screenBuilder: (context) => const TextDiffScreen(),
    ),
  );
}
