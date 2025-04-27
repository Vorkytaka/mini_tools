import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../tool/feature_tool.dart';
import '../../tool/tool.dart';
import 'feature/qr_code_feature.dart';
import 'ui/qr_code_screen.dart';

final class QrCodeTool {
  const QrCodeTool._();

  static const id = 'qr_code';

  static Tool shared = FeatureTool(
    titleBuilder: (context) => Translations.of(context).qrCode.title,
    icon: Icons.qr_code,
    screenBuilder: (context) => const QrCodeScreen(),
    feature: qrCodeFeatureFactory()..init(),
  );
}
