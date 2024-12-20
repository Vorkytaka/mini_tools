part of 'json_feature.dart';

Next<JsonState, JsonEffect> _jsonUpdate(
  JsonState state,
  JsonMsg event,
) {
  switch (event) {
    case InputUpdateEvent():
      return (
        state.copyWith(input: event.input),
        [
          FormatOutputEffect(
            input: event.input,
            format: state.format,
            jsonPath: state.jsonPath.value,
          ),
        ],
      );
    case OutputUpdateEvent():
      return (
        state.copyWith(output: event.output),
        const [],
      );
    case FormatUpdateEvent():
      return (
        state.copyWith(format: event.format),
        [
          FormatOutputEffect(
            input: state.input,
            format: event.format,
            jsonPath: state.jsonPath.value,
          ),
        ],
      );
    case JsonPathUpdateEvent():
      final jsonPathValue = _maybeJsonPath(event.jsonPath);
      return next(
        state: state.copyWith(
          jsonPath: JsonPathState(
            input: event.jsonPath,
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
