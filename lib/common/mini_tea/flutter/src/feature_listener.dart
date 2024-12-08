import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../feature/feature.dart';

typedef FeatureWidgetListener<S> = void Function(BuildContext context, S state);
typedef FeatureStateCondition<S> = bool Function(S previous, S current);

class FeatureListener<F extends Feature<S, M, E>, S, M, E>
    extends StatefulWidget {
  final FeatureWidgetListener<S> listener;
  final Widget child;
  final F? feature;
  final FeatureStateCondition<S>? listenWhen;

  const FeatureListener({
    required this.listener,
    required this.child,
    this.feature,
    this.listenWhen,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _FeatureListenerState<F, S, M, E>();
  }
}

class _FeatureListenerState<F extends Feature<S, M, E>, S, M, E>
    extends State<FeatureListener<F, S, M, E>> {
  late F _feature;
  late S _previousState;
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    _feature = widget.feature ?? context.read<F>();
    _previousState = _feature.state;
    _subscribe();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final feature = widget.feature ?? context.read<F>();
    if (_feature != feature) {
      if (_subscription != null) {
        _unsubscribe();
        _feature = feature;
        _previousState = _feature.state;
      }
      _subscribe();
    }
  }

  @override
  void didUpdateWidget(covariant FeatureListener<F, S, M, E> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldFeature = oldWidget.feature ?? context.read<F>();
    final feature = widget.feature ?? oldFeature;
    if (feature != oldFeature) {
      if (_subscription != null) {
        _unsubscribe();
        _feature = feature;
        _previousState = _feature.state;
      }
      _subscribe();
    }
  }

  @override
  void dispose() {
    _unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _subscribe() {
    _subscription = _feature.stateStream.listen((state) {
      if (widget.listenWhen?.call(_previousState, state) ?? true) {
        if (mounted) {
          widget.listener(context, state);
        }
      }
      _previousState = state;
    });
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}
