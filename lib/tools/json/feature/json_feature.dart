import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:json_path/json_path.dart';

import '../../../common/mini_tea/mini_tea.dart';

part 'json_effect.dart';

part 'json_effect_handler.dart';

part 'json_event.dart';

part 'json_state.dart';

part 'json_update.dart';

typedef JsonFeature = Feature<JsonState, JsonEvent, JsonEffect, void>;

JsonFeature jsonFeatureFactory() => JsonFeature(
      initialState: const JsonState.init(),
      update: _jsonUpdate,
      effectHandlers: [_jsonEffectHandler],
      initialEffect: const [],
    );