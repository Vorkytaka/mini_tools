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
  static const descriptor = ToolDescriptor(
    id: 'hash_tool',
    metadata: ToolMetadata(
      icon: Icons.qr_code_2,
      isAvailable: kDebugMode,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: hashFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).hash.title;

  static Widget _buildScreen(BuildContext context) {
    return const HashToolScreen();
  }
}
