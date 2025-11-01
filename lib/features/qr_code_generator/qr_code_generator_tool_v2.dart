import 'package:flutter/material.dart';

import '../../core/tool_v2/tool_v2.dart';
import '../../i18n/strings.g.dart';
import 'domain/qr_code_feature.dart';
import 'presentation/qr_code_screen.dart';

final class QrCodeGeneratorToolV2 {
  static final descriptor = ToolDescriptor(
    id: 'qr_code_generator',
    metadata: const ToolMetadata(
      icon: Icons.qr_code,
      isAvailable: true,
    ),
    localizationData: ToolLocalizationData(
      titleDelegate: (context) => Translations.of(context).qrCode.title,
    ),
    factory: FeatureToolFactory(
      featureBuilder: qrCodeFeatureFactory,
      screenBuilder: (context) => const QrCodeScreen(),
    ),
  );
}
