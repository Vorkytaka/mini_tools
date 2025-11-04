part of 'json_feature.dart';

sealed class JsonFormatterMessage {
  const JsonFormatterMessage._();
}

final class InputUpdateMessage implements JsonFormatterMessage {
  final String input;

  const InputUpdateMessage(this.input);
}

final class OutputUpdateMessage implements JsonFormatterMessage {
  final String? output;

  const OutputUpdateMessage(this.output);
}

final class FormatUpdateMessage implements JsonFormatterMessage {
  final JsonOutputFormat format;

  const FormatUpdateMessage(this.format);
}

final class JsonPathUpdateMessage implements JsonFormatterMessage {
  final String jsonPath;

  const JsonPathUpdateMessage(this.jsonPath);
}
