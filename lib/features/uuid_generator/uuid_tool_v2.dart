import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/uuid_feature.dart';
import 'presentation/uuid_tool_screen.dart';

final class UuidToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'uuid_generator',
    metadata: ToolMetadata(icon: Icons.tag, isAvailable: kDebugMode),
    localizationData: ToolLocalizationData(titleDelegate: _titleDelegate),
    factory: FeatureToolFactory(
      featureBuilder: uuidFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).uuidGenerator.title;

  static Widget _buildScreen(BuildContext context) {
    return const UuidToolScreen();
  }
}
