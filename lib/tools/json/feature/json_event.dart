part of 'json_feature.dart';


sealed class JsonEvent {
  const JsonEvent._();
}

final class InputUpdateEvent implements JsonEvent {
  final String input;

  const InputUpdateEvent(this.input);
}

final class OutputUpdateEvent implements JsonEvent {
  final String output;

  const OutputUpdateEvent(this.output);
}

final class FormatUpdateEvent implements JsonEvent {
  final JsonOutputFormat format;

  const FormatUpdateEvent(this.format);
}

final class JsonPathUpdateEvent implements JsonEvent {
  final String jsonPath;

  const JsonPathUpdateEvent(this.jsonPath);
}