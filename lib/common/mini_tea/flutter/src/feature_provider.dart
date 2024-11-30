import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../feature/feature.dart';

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
