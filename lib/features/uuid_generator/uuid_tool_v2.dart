import 'package:flutter/material.dart';

import '../../core/tool_v2/src/impl/feature_impl.dart';
import '../../core/tool_v2/src/tool_descriptor.dart';
import '../../core/tool_v2/src/tool_localization_data.dart';
import '../../core/tool_v2/src/tool_metadata.dart';
import '../../i18n/strings.g.dart';
import 'domain/uuid_feature.dart';
import 'presentation/uuid_tool_screen.dart';

final class UuidToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'uuid_generator',
    metadata: const ToolMetadata(
      icon: Icons.add,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).uuidGenerator.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: uuidFeatureFactory,
      screenBuilder: (context) => const UuidToolScreen(),
    ),
  );
}
