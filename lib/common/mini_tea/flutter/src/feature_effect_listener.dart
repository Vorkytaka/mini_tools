import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../feature/feature.dart';
import '../../feature/src/feature.dart';
import '../flutter.dart';
import 'feature_listener.dart';

class FeatureEffectListener<F extends Feature<S, M, E>, S, M, E,
    Effect extends E> extends StatefulWidget {
  final FeatureWidgetListener<Effect> listener;
  final F? feature;
  final Widget child;

  const FeatureEffectListener({
    required this.listener,
    required this.child,
    this.feature,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _FeatureEffectListener<F, S, M, E, Effect>();
  }
}

class _FeatureEffectListener<F extends Feature<S, M, E>, S, M, E,
    Effect extends E> extends State<FeatureEffectListener<F, S, M, E, Effect>> {
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
    covariant FeatureEffectListener<F, S, M, E, Effect> oldWidget,
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
    _subscription = _feature.effects.whereType<Effect>().listen((news) {
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
