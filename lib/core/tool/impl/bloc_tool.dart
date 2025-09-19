import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_tool.dart';

class BlocTool<B extends BlocBase<S>, S> extends BaseTool {
  final B bloc;

  const BlocTool({
    required super.titleBuilder,
    required super.icon,
    required super.screenBuilder,
    required this.bloc,
  });

  @override
  Widget buildScreen(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Builder(builder: screenBuilder),
    );
  }
}
