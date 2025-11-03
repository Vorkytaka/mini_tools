import 'dart:async';

import 'package:mini_tea/feature.dart';
import 'package:uuid/uuid.dart';

import '../../../core/tool_v2/src/tool_registry.dart';
import 'effect/tabs_effect.dart';
import 'message/tabs_message.dart';
import 'state/tabs_state.dart';

final class TabsEffectHandler
    implements EffectHandler<TabsEffect, TabsMessage> {
  final ToolsRegistry _toolsRegistry;

  const TabsEffectHandler({required ToolsRegistry toolsRegistry})
    : _toolsRegistry = toolsRegistry;

  @override
  FutureOr<void> call(TabsEffect effect, MsgEmitter<TabsMessage> emit) {
    return switch (effect) {
      CreateTabEffect() => _createTab(effect, emit),
    };
  }

  Future<void> _createTab(
    CreateTabEffect effect,
    MsgEmitter<TabsMessage> emit,
  ) async {
    final toolDescriptor = _toolsRegistry.getToolById(effect.toolId)!;
    final instance = toolDescriptor.factory.create();
    await instance.init();
    final tab = TabItem(
      id: const Uuid().v4(),
      instance: instance,
      descriptor: toolDescriptor,
    );
    emit(CreatedTabMessage(tab: tab));
  }
}
