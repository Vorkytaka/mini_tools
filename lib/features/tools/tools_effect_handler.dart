import 'package:flutter/cupertino.dart';
import 'package:mini_tea/feature.dart';

import 'effect/tools_effect.dart';
import 'message/tools_message.dart';

final class ToolsEffectHandler
    implements EffectHandler<ToolsEffect, ToolsMessage> {
  // NEVER DO THIS!
  // But i did.. Because i'm lazy
  final GlobalKey _key;

  ToolsEffectHandler({
    required GlobalKey key,
  }) : _key = key;

  @override
  void call(
    ToolsEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) {
    return switch (effect) {
      SearchToolsEffect() => _searchTools(effect, emit),
    };
  }

  void _searchTools(
    SearchToolsEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) {
    final query = effect.query.toLowerCase();
    final result = effect.tools
        .where((tool) =>
            tool.buildTitle(_key.currentContext!).toLowerCase().contains(query))
        .toList(growable: false);

    emit(ToolsMessage.updateSearchResult(result));
  }
}
