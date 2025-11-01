import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/hash_feature.dart';
import 'presentation/hash_screen.dart';

final class HashToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'hash_tool',
    metadata: const ToolMetadata(
      icon: Icons.qr_code,
      isAvailable: kDebugMode,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).hash.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: hashFeatureFactory,
      screenBuilder: (context) => const HashToolScreen(),
    ),
  );
}
