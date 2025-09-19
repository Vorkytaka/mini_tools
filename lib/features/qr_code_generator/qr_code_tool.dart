import 'package:flutter/material.dart';

import '../../core/tool/impl/feature_tool.dart';
import '../../core/tool/tool.dart';
import '../../i18n/strings.g.dart';
import 'domain/qr_code_feature.dart';
import 'presentation/qr_code_screen.dart';

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
