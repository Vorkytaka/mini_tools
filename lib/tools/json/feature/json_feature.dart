import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:json_path/json_path.dart';
import 'package:mini_tea/effect_handlers.dart';
import 'package:mini_tea/feature.dart';

import 'state/json_state.dart';

part 'json_effect.dart';

part 'json_effect_handler.dart';

part 'json_event.dart';

part 'json_update.dart';

typedef JsonFeature = Feature<JsonState, JsonMsg, JsonEffect>;

JsonFeature jsonFeatureFactory() => JsonFeature(
      initialState: JsonState.init(),
      update: _jsonUpdate,
    ).wrapEffects(
      DebounceEffectHandler(
        duration: const Duration(milliseconds: 300),
        handler: const JsonEffectHandler(),
      ),
    );
