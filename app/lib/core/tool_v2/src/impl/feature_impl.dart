import 'package:flutter/widgets.dart';
import 'package:mini_tea/feature.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';

import '../tool_factory.dart';
import '../tool_instance.dart';

final class FeatureToolFactory<F extends Feature<S, M, E>, S, M, E>
    implements ToolFactory {
  final F Function() featureBuilder;
  final WidgetBuilder screenBuilder;

  const FeatureToolFactory({
    required this.featureBuilder,
    required this.screenBuilder,
  });

  @override
  ToolInstance create() {
    return _FeatureToolInstance<F, S, M, E>(
      feature: featureBuilder(),
      screenBuilder: screenBuilder,
    );
  }
}

final class _FeatureToolInstance<F extends Feature<S, M, E>, S, M, E>
    implements ToolInstance {
  final F feature;

  final WidgetBuilder screenBuilder;

  const _FeatureToolInstance({
    required this.feature,
    required this.screenBuilder,
  });

  @override
  Widget buildScreen(BuildContext context) {
    return FeatureProvider<F>.value(
      value: feature,
      lazy: true,
      child: Builder(builder: screenBuilder),
    );
  }

  @override
  Future<void> dispose() => feature.dispose();

  @override
  Future<void> init() async => await feature.init();
}
