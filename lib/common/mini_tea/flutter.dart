import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'mini_tea.dart';

typedef CreateFeature<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N> = F
    Function(BuildContext context);

class FeatureProvider<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
    extends StatelessWidget {
  final F? _value;
  final CreateFeature<F, S, Ev, Ef, N>? _create;
  final Widget child;

  const FeatureProvider.create({
    required CreateFeature<F, S, Ev, Ef, N> create,
    required this.child,
    super.key,
  })  : _value = null,
        _create = create;

  const FeatureProvider.value({
    required F value,
    required this.child,
    super.key,
  })  : _value = value,
        _create = null;

  @override
  Widget build(BuildContext context) {
    assert((_value != null && _create == null) ||
        (_value == null && _create != null));

    final value = _value;
    return value != null
        ? InheritedProvider<F>.value(
            value: value,
            startListening: _startListening,
            lazy: false,
            child: child,
          )
        : InheritedProvider<F>(
            create: _create,
            startListening: _startListening,
            dispose: (_, feature) => feature.dispose(),
            lazy: false,
            child: child,
          );
  }

  static F of<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>(
    BuildContext context, {
    bool listen = false,
  }) {
    try {
      return Provider.of<F>(context, listen: listen);
    } on ProviderNotFoundException catch (e) {
      if (e.valueType != F) {
        rethrow;
      }
      throw FlutterError(
        '''
        FeatureProvider.of() called with a context that does not contain a $F.
        No ancestor could be found starting from the context that was passed to FeatureProvider.of<$F>().

        This can happen if the context you used comes from a widget above the FeatureProvider.

        The context used was: $context
        ''',
      );
    }
  }

  VoidCallback _startListening(InheritedContext<F?> element, F value) {
    return value.stateStream
        .listen((_) => element.markNeedsNotifyDependents())
        .cancel;
  }
}

typedef FeatureWidgetBuilder<S> = Widget Function(
  BuildContext context,
  S state,
);

typedef FeatureStateCondition<S> = bool Function(S previous, S current);

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

typedef FeatureWidgetListener<S> = void Function(BuildContext context, S state);

class FeatureListener<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
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
    return _FeatureListenerState<F, S, Ev, Ef, N>();
  }
}

class _FeatureListenerState<F extends Feature<S, Ev, Ef, N>, S, Ev, Ef, N>
    extends State<FeatureListener<F, S, Ev, Ef, N>> {
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
  void didUpdateWidget(covariant FeatureListener<F, S, Ev, Ef, N> oldWidget) {
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
        widget.listener(context, state);
      }
      _previousState = state;
    });
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}
