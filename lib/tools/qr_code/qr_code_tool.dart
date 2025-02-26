import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import 'feature/qr_code_feature.dart';
import 'qr_code_screen.dart';

final qrCodeTool = FeatureTool(
  titleBuilder: (context) => 'Qr Code',
  icon: Icons.qr_code,
  screenBuilder: (context) => const QrCodeScreen(),
  feature: qrCodeFeatureFactory()..init(),
);
