part of 'json_feature.dart';

sealed class JsonMsg {
  const JsonMsg._();
}

final class InputUpdateEvent implements JsonMsg {
  final String input;

  const InputUpdateEvent(this.input);
}

final class OutputUpdateEvent implements JsonMsg {
  final String? output;

  const OutputUpdateEvent(this.output);
}

final class FormatUpdateEvent implements JsonMsg {
  final JsonOutputFormat format;

  const FormatUpdateEvent(this.format);
}

final class JsonPathUpdateEvent implements JsonMsg {
  final String jsonPath;

  const JsonPathUpdateEvent(this.jsonPath);
}
