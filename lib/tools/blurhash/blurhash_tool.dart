import 'package:flutter/material.dart';

import '../../tool/feature_tool.dart';
import 'blurhash_screen.dart';
import 'feature/blurhash_feature.dart';

final blurhashTool = FeatureTool(
  titleBuilder: (context) => 'Blurhash',
  icon: Icons.blur_circular,
  screenBuilder: (context) => const BlurhashScreen(),
  feature: blurhashFeatureFactory()..init(),
);
