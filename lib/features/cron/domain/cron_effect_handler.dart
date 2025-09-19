import 'dart:async';

import 'package:mini_tea/feature.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/logger/logger.dart';
import 'cron_feature.dart';
import 'effect/cron_effect.dart';

const _tag = 'CronEffectHandler';
const _inputKey = 'cron_feature/input';

final class CronSaveEffectHandler
    implements EffectHandler<SaveEffect, CronMessage> {
  const CronSaveEffectHandler();

  @override
  Future<void> call(SaveEffect effect, MsgEmitter<CronMessage> emit) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString(_inputKey, effect.input);
      Log.v(_tag, 'Input was saved successfully; ${effect.input}');
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not save the input; ${effect.input}', e, st);
    }
  }
}

final class CronLoadEffectHandler
    implements EffectHandler<LoadEffect, CronMessage> {
  const CronLoadEffectHandler();

  @override
  Future<void> call(LoadEffect effect, MsgEmitter<CronMessage> emit) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final input = sharedPreferences.getString(_inputKey);
      if (input != null) {
        emit(CronMessage.inputUpdate(input: input, saveToPersist: false));
        Log.v(_tag, 'Successfully load the input; $input');
      }
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not load the input;', e, st);
    }
  }
}
