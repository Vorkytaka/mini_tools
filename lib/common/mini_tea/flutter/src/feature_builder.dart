import 'package:flutter/widgets.dart';

import '../../feature/feature.dart';
import 'feature_listener.dart';
import 'feature_provider.dart';

typedef FeatureWidgetBuilder<S> = Widget Function(
  BuildContext context,
  S state,
);

class FeatureBuilder<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
    extends StatefulWidget {
  final FeatureWidgetBuilder<S> builder;
  final F? feature;
  final FeatureStateCondition<S>? buildWhen;

  const FeatureBuilder({
    required this.builder,
    this.feature,
    this.buildWhen,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _FeatureBuilderState<F, S, Ev, Ef, N>();
  }
}

class _FeatureBuilderState<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
    extends State<FeatureBuilder<F, S, Ev, Ef, N>> {
  late F _feature;
  late S _state;

  @override
  void initState() {
    super.initState();

    _feature = widget.feature ?? FeatureProvider.of<F, S, Ev, Ef, N>(context);
    _state = _feature.state;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature =
        widget.feature ?? FeatureProvider.of<F, S, Ev, Ef, N>(context);
    if (_feature != feature) {
      _feature = feature;
      _state = _feature.state;
    }
  }

  @override
  void didUpdateWidget(covariant FeatureBuilder<F, S, Ev, Ef, N> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldFeature =
        oldWidget.feature ?? FeatureProvider.of<F, S, Ev, Ef, N>(context);
    final feature = widget.feature ?? oldFeature;
    if (oldFeature != feature) {
      _feature = feature;
      _state = _feature.state;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FeatureListener<F, S, Ev, Ef, N>(
      listener: (context, state) => setState(() => _state = state),
      listenWhen: widget.buildWhen,
      child: widget.builder(context, _state),
    );
  }
}
