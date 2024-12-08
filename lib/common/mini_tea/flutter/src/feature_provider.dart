import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../feature/feature.dart';

typedef CreateFeature<F extends Feature<S, Ev, Ef>, S, Ev, Ef> = F Function(
    BuildContext context);

typedef DisposeFeature<F extends Feature<S, Ev, Ef>, S, Ev, Ef> = void Function(
    F feature);

class FeatureProvider<F extends Feature<S, Ev, Ef>, S, Ev, Ef>
    extends StatelessWidget {
  final F? _value;
  final CreateFeature<F, S, Ev, Ef>? _create;

  /// This callback will called right before [Feature.dispose].
  ///
  /// You can use it to send last events to clean some resources.
  final DisposeFeature<F, S, Ev, Ef>? _onDispose;
  final Widget child;

  final bool lazy;

  const FeatureProvider.create({
    required CreateFeature<F, S, Ev, Ef> create,
    required this.child,
    DisposeFeature<F, S, Ev, Ef>? onDispose,
    this.lazy = false,
    super.key,
  })  : _value = null,
        _create = create,
        _onDispose = onDispose;

  const FeatureProvider.value({
    required F value,
    required this.child,
    this.lazy = false,
    super.key,
  })  : _value = value,
        _create = null,
        _onDispose = null;

  @override
  Widget build(BuildContext context) {
    assert((_value != null && _create == null) ||
        (_value == null && _create != null));

    final value = _value;
    return value != null
        ? InheritedProvider<F>.value(
            value: value,
            startListening: _startListening,
            lazy: lazy,
            child: child,
          )
        : InheritedProvider<F>(
            create: _create,
            startListening: _startListening,
            dispose: (_, feature) {
              _onDispose?.call(feature);
              feature.dispose();
            },
            lazy: lazy,
            child: child,
          );
  }

  static F of<F extends Feature<S, Ev, Ef>, S, Ev, Ef>(
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
