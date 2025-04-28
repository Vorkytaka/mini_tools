import 'dart:async';
import 'dart:convert';

import 'package:mini_tea/feature.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/logger/logger.dart';
import 'effect/number_base_effect.dart';
import 'number_base_feature.dart';

final class NumberBaseEffectHandler
    implements EffectHandler<NumberBaseEffect, NumberBaseMessage> {
  static const _tag = 'NumberBase';
  static const _stateKey = 'number_base/state';

  const NumberBaseEffectHandler();

  @override
  Future<void> call(
    NumberBaseEffect effect,
    MsgEmitter<NumberBaseMessage> emit,
  ) {
    return switch (effect) {
      SaveStateEffect() => _saveState(effect, emit),
      LoadStateEffect() => _loadState(effect, emit),
    };
  }

  Future<void> _saveState(
    SaveStateEffect effect,
    MsgEmitter<NumberBaseMessage> emit,
  ) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = jsonEncode(effect.state.toJson());
      await sharedPreferences.setString(_stateKey, json);
      Log.v(_tag, 'Successfully saved the state; $json');
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not save the state;', e, st);
    }
  }

  Future<void> _loadState(
    LoadStateEffect effect,
    MsgEmitter<NumberBaseMessage> emit,
  ) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final value = sharedPreferences.getString(_stateKey);
      if (value != null) {
        final json = jsonDecode(value);
        final state = NumberBaseState.fromJson(json);
        emit(SetStateMessage(state));
        Log.v(_tag, 'Successfully load the state; $json');
      } else {
        Log.v(_tag, 'No state in shared preferences;');
      }
    } on Object catch (e, st) {
      Log.e(
        _tag,
        'Could not load the state; Clean the value in Shared preferences;',
        e,
        st,
      );
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.remove(_stateKey);
    }
  }
}
