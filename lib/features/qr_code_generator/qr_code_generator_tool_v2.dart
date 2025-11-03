import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/qr_code_feature.dart';
import 'presentation/qr_code_screen.dart';

final class QrCodeGeneratorToolV2 {
  static const descriptor = ToolDescriptor(
    id: 'qr_code_generator',
    metadata: ToolMetadata(icon: Icons.qr_code, isAvailable: true),
    localizationData: ToolLocalizationData(
      titleDelegate: _titleDelegate,
    ),
    factory: FeatureToolFactory(
      featureBuilder: qrCodeFeatureFactory,
      screenBuilder: _buildScreen,
    ),
  );

  static String _titleDelegate(BuildContext context) =>
      Translations.of(context).qrCode.title;

  static Widget _buildScreen(BuildContext context) {
    return const QrCodeScreen();
  }
}
