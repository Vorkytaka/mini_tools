part of 'json_feature.dart';

enum JsonOutputFormat {
  min,
  two,
  four,
  tab,
}

@immutable
class JsonState {
  final String input;
  final String output;
  final String jsonPathInput;
  final JsonOutputFormat format;
  final JsonPath? jsonPath;

  const JsonState({
    required this.input,
    required this.output,
    required this.jsonPathInput,
    required this.format,
    required this.jsonPath,
  });

  const JsonState.init()
      : input = '',
        output = '',
        jsonPathInput = '',
        format = JsonOutputFormat.two,
        jsonPath = null;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JsonState &&
          input == other.input &&
          output == other.output &&
          jsonPathInput == other.jsonPathInput &&
          format == other.format &&
          jsonPath == other.jsonPath;

  @override
  int get hashCode =>
      input.hashCode ^
      output.hashCode ^
      jsonPathInput.hashCode ^
      format.hashCode ^
      jsonPath.hashCode;

  JsonState copyWith({
    String? input,
    String? output,
    String? jsonPathInput,
    JsonOutputFormat? format,
    JsonPath? jsonPath,
  }) =>
      JsonState(
        input: input ?? this.input,
        output: output ?? this.output,
        jsonPathInput: jsonPathInput ?? this.jsonPathInput,
        format: format ?? this.format,
        jsonPath: jsonPath ?? this.jsonPath,
      );

  JsonState clearJsonPath({
    String? input,
    String? output,
    String? jsonPathInput,
    JsonOutputFormat? format,
  }) =>
      JsonState(
        input: input ?? this.input,
        output: output ?? this.output,
        jsonPathInput: jsonPathInput ?? this.jsonPathInput,
        format: format ?? this.format,
        jsonPath: null,
      );
}
