import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/regexp_feature.dart';
import 'presentation/regexp.dart';

final class RegexpToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'regexp_tool',
    metadata: ToolMetadata(
      icon: Icons.manage_search,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: regExpFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).regexp.title;

  static Widget _buildScreen(BuildContext context) {
    return const RegExpToolScreen();
  }
}
