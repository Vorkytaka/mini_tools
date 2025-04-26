import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:mini_tea/feature.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/logger/logger.dart';
import 'effect/tools_effect.dart';
import 'message/tools_message.dart';
import 'state/tools_state.dart';

final class ToolsEffectHandler
    implements EffectHandler<ToolsEffect, ToolsMessage> {
  static const _tag = 'ToolsEffectHandler';
  static const _stateKey = 'tools_feature/state';

  // NEVER DO THIS!
  // But i did.. Because i'm lazy
  final GlobalKey _key;

  ToolsEffectHandler({
    required GlobalKey key,
  }) : _key = key;

  @override
  Future<void> call(
    ToolsEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) {
    return switch (effect) {
      SearchToolsEffect() => _searchTools(effect, emit),
      SaveStateEffect() => _saveState(effect, emit),
      LoadStateEffect() => _loadState(effect, emit),
    };
  }

  Future<void> _searchTools(
    SearchToolsEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) async {
    final query = effect.query.toLowerCase();
    final result = effect.tools
        .where((tool) => tool.tool
            .buildTitle(_key.currentContext!)
            .toLowerCase()
            .contains(query))
        .toList(growable: false);

    emit(ToolsMessage.updateSearchResult(result));
  }

  Future<void> _saveState(
    SaveStateEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) async {
    try {
      final json = jsonEncode(effect.state.toJson());
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString(_stateKey, json);
      Log.v(_tag, 'Successfully save the state');
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not save the state', e, st);
    }
  }

  Future<void> _loadState(
    LoadStateEffect effect,
    MsgEmitter<ToolsMessage> emit,
  ) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final str = sharedPreferences.getString(_stateKey);
      if (str != null) {
        final json = jsonDecode(str);
        final state = ToolsState.fromJson(json);
        emit(ToolsMessage.loadedState(state));
        Log.v(_tag, 'Successfully load the state');
      }
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not load the state', e, st);
    }
  }
}
