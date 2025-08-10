import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_path/json_path.dart';

part 'json_formatter_state.freezed.dart';

enum JsonOutputFormat { min, two, four, tab }

@immutable
@freezed
class JsonFormatterState with _$JsonFormatterState {
  const factory JsonFormatterState({
    required String input,
    required String? output,
    required JsonOutputFormat format,
    required JsonPathState jsonPath,
  }) = _JsonFormatterState;

  factory JsonFormatterState.init() => const JsonFormatterState(
    input: '',
    output: null,
    format: JsonOutputFormat.min,
    jsonPath: JsonPathState(input: '', value: null),
  );
}

@immutable
@freezed
class JsonPathState with _$JsonPathState {
  const factory JsonPathState({
    required String input,
    required JsonPath? value,
  }) = _JsonPathState;

  const JsonPathState._();

  bool get isError => input.isNotEmpty && value == null;
}
