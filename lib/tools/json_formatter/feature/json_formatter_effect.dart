part of 'json_feature.dart';

sealed class JsonEffect {
  const JsonEffect._();
}

final class FormatOutputEffect implements JsonEffect {
  final String input;
  final JsonOutputFormat format;
  final JsonPath? jsonPath;

  const FormatOutputEffect({
    required this.input,
    required this.format,
    required this.jsonPath,
  });
}
