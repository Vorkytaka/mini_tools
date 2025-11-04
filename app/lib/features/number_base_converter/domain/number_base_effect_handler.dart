import 'dart:async';
import 'dart:convert';

import 'package:mini_tea/feature.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/logger/logger.dart';
import 'effect/number_base_effect.dart';
import 'number_base_feature.dart';

const _tag = 'NumberBase';
const _stateKey = 'number_base/state';

final class SaveNumberBaseEffectHandler
    implements EffectHandler<SaveStateEffect, NumberBaseMessage> {
  const SaveNumberBaseEffectHandler();

  @override
  FutureOr<void> call(
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
}

final class LoadNumberBaseEffectHandler
    implements EffectHandler<LoadStateEffect, NumberBaseMessage> {
  const LoadNumberBaseEffectHandler();

  @override
  FutureOr<void> call(
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
