part of 'json_feature.dart';

Next<JsonState, JsonEffect, Object> _jsonUpdate(
  JsonState state,
  JsonEvent event,
) {
  switch (event) {
    case InputUpdateEvent():
      return (
        state.copyWith(input: event.input),
        [
          FormatOutputEffect(
            input: event.input,
            format: state.format,
            jsonPath: state.jsonPath,
          ),
        ],
        const [],
      );
    case OutputUpdateEvent():
      return next();
      return (
        state.copyWith(output: event.output),
        const [],
        const [],
      );
    case FormatUpdateEvent():
      return (
        state.copyWith(format: event.format),
        [
          FormatOutputEffect(
            input: state.input,
            format: event.format,
            jsonPath: state.jsonPath,
          ),
        ],
        const [],
      );
    case JsonPathUpdateEvent():
      final jsonPath = _maybeJsonPath(event.jsonPath);
      return (
        jsonPath == null
            ? state.clearJsonPath(jsonPathInput: event.jsonPath)
            : state.copyWith(jsonPath: jsonPath, jsonPathInput: event.jsonPath),
        [
          FormatOutputEffect(
            input: state.input,
            format: state.format,
            jsonPath: jsonPath,
          ),
        ],
        const [],
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
