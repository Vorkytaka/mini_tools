import 'package:flutter/material.dart';

import '../../core/tool/impl/feature_tool.dart';
import '../../core/tool/tool.dart';
import '../../i18n/strings.g.dart';
import 'domain/uuid_feature.dart';
import 'presentation/uuid_tool_screen.dart';

final class UuidTool {
  const UuidTool._();

  static const id = 'uuid';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).uuidGenerator.title,
    icon: Icons.perm_identity,
    screenBuilder: (context) => const UuidToolScreen(),
    feature: uuidFeatureFactory()..init(),
  );
}
