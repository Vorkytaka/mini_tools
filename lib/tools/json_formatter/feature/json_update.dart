part of 'json_feature.dart';

Next<JsonFormatterState, JsonEffect> _jsonFormatterUpdate(
  JsonFormatterState state,
  JsonFormatterMessage message,
) {
  switch (message) {
    case InputUpdateMessage():
      return next(
        state: state.copyWith(input: message.input),
        effects: [
          FormatOutputEffect(
            input: message.input,
            format: state.format,
            jsonPath: state.jsonPath.value,
          ),
        ],
      );
    case OutputUpdateMessage():
      return next(state: state.copyWith(output: message.output));
    case FormatUpdateMessage():
      return next(
        state: state.copyWith(format: message.format),
        effects: [
          FormatOutputEffect(
            input: state.input,
            format: message.format,
            jsonPath: state.jsonPath.value,
          ),
        ],
      );
    case JsonPathUpdateMessage():
      final jsonPathValue = _maybeJsonPath(message.jsonPath);
      return next(
        state: state.copyWith(
          jsonPath: JsonPathState(
            input: message.jsonPath,
            value: jsonPathValue,
          ),
        ),
        effects: [
          FormatOutputEffect(
            input: state.input,
            format: state.format,
            jsonPath: jsonPathValue,
          ),
        ],
      );
  }
}

JsonPath? _maybeJsonPath(String? path) {
  if (path == null) {
    return null;
  }

  try {
    return JsonPath(path);
  } on Exception catch (_) {
    return null;
  }
}
