import 'package:flutter/widgets.dart';

import '../common/mini_tea/feature/feature.dart';
import '../common/mini_tea/flutter/flutter.dart';
import 'base_tool.dart';

class FeatureTool<F extends Feature<S, Ev, Ef>, S, Ev, Ef> extends BaseTool {
  final F feature;

  const FeatureTool({
    required super.titleBuilder,
    required super.icon,
    required super.screenBuilder,
    required this.feature,
  });

  @override
  Widget buildScreen(BuildContext context) {
    return FeatureProvider.value(
      value: feature,
      lazy: true,
      child: Builder(builder: screenBuilder),
    );
  }
}
