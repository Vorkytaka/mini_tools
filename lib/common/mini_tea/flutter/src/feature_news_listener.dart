import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../feature/feature.dart';
import '../flutter.dart';
import 'feature_listener.dart';

class FeatureNewsListener<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
    extends StatefulWidget {
  final FeatureWidgetListener<N> listener;
  final F? feature;
  final Widget child;

  const FeatureNewsListener({
    required this.listener,
    required this.child,
    this.feature,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _FeatureNewsListener<F, S, Ev, Ef, N>();
  }
}

class _FeatureNewsListener<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
    extends State<FeatureNewsListener<F, S, Ev, Ef, N>> {
  late F _feature;
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    _feature = widget.feature ?? context.read<F>();
    _subscribe();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final feature = widget.feature ?? context.read<F>();
    if (feature != _feature) {
      _feature = feature;
      _unsubscribe();
      _subscribe();
    }
  }

  @override
  void didUpdateWidget(
    covariant FeatureNewsListener<F, S, Ev, Ef, N> oldWidget,
  ) {
    super.didUpdateWidget(oldWidget);

    final oldFeature = oldWidget.feature ?? context.read<F>();
    final feature = widget.feature ?? context.read<F>();
    if (feature != oldFeature) {
      _feature = feature;
      _unsubscribe();
      _subscribe();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _subscribe() {
    _subscription = _feature.news.listen((news) {
      if (mounted) {
        widget.listener(context, news);
      }
    });
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}
