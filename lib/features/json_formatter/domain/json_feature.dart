import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:json_path/json_path.dart';
import 'package:mini_tea/effect_handlers.dart';
import 'package:mini_tea/feature.dart';

import 'state/json_formatter_state.dart';

part 'json_formatter_effect.dart';

part 'json_effect_handler.dart';

part 'json_formatter_message.dart';

part 'json_update.dart';

typedef JsonFormatterFeature =
    Feature<JsonFormatterState, JsonFormatterMessage, JsonEffect>;

JsonFormatterFeature jsonFormatterFeatureFactory() => JsonFormatterFeature(
  initialState: JsonFormatterState.init(),
  update: _jsonFormatterUpdate,
).wrapEffects(
  DebounceEffectHandler(
    duration: const Duration(milliseconds: 300),
    handler: const JsonEffectHandler(),
  ),
);
