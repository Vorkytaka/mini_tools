import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../tool_factory.dart';
import '../tool_instance.dart';

final class BlocToolFactory<B extends BlocBase<S>, S> implements ToolFactory {
  final B Function() blocBuilder;
  final WidgetBuilder screenBuilder;

  const BlocToolFactory({
    required this.blocBuilder,
    required this.screenBuilder,
  });

  @override
  ToolInstance create() {
    return _BlocToolInstance<B, S>(
      bloc: blocBuilder(),
      screenBuilder: screenBuilder,
    );
  }
}

final class _BlocToolInstance<B extends BlocBase<S>, S>
    implements ToolInstance {
  final B _bloc;

  final WidgetBuilder screenBuilder;

  const _BlocToolInstance({required B bloc, required this.screenBuilder})
    : _bloc = bloc;

  @override
  Widget buildScreen(BuildContext context) {
    return BlocProvider<B>.value(
      value: _bloc,
      child: Builder(builder: screenBuilder),
    );
  }

  @override
  Future<void> dispose() => _bloc.close();

  @override
  Future<void> init() async {}
}
