import 'package:flutter/cupertino.dart';
import 'package:mini_tea/feature.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/logger/logger.dart';
import '../../tools.dart';
import 'effect/tools_effect.dart';
import 'message/tools_message.dart';

final class ToolsEffectHandler
    implements EffectHandler<ToolsEffect, ToolsMessage> {
  static const _tag = 'ToolsEffectHandler';
  static const _selectedToolKey = 'tools_feature/selected_tool_id';

  // NEVER DO THIS!
  // But i did.. Because i'm lazy
  final GlobalKey _key;

  ToolsEffectHandler({required GlobalKey key}) : _key = key;

  @override
  Future<void> call(ToolsEffect effect, MsgEmitter<ToolsMessage> emit) {
    return switch (effect) {
      SearchToolsEffect() => _searchTools(effect, emit),
      SaveSelectedToolEffect() => _saveSelectedTool(effect, emit),
      LoadSelectedToolEffect() => _loadSelectedTool(effect, emit),
    };
  }

  Future<void> _searchTools(
    SearchToolsEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) async {
    final query = effect.query.toLowerCase();
    final result = effect.tools
        .where(
          (toolId) =>
              ToolsRegistry.toolById(toolId)
                  ?.buildTitle(_key.currentContext!)
                  .toLowerCase()
                  .contains(query) ??
              false,
        )
        .toList(growable: false);

    emit(ToolsMessage.updateSearchResult(result));
  }

  Future<void> _saveSelectedTool(
    SaveSelectedToolEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) async {
    try {
      final toolId = effect.toolId;
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString(_selectedToolKey, toolId);
      Log.v(_tag, 'Successfully save the selected tool ID; [$toolId]');
    } on Object catch (e, st) {
      Log.e(
        _tag,
        'Could not save the selected tool ID; [${effect.toolId}]',
        e,
        st,
      );
    }
  }

  Future<void> _loadSelectedTool(
    LoadSelectedToolEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final toolId = sharedPreferences.getString(_selectedToolKey);
      if (toolId != null) {
        emit(ToolsMessage.selectTool(toolId));
        Log.v(_tag, 'Successfully load the tool ID; [$toolId]');
      }
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not load the tool ID; Clear persist value', e, st);
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.remove(_selectedToolKey);
    }
  }
}
