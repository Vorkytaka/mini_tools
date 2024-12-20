import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_path/json_path.dart';

part 'json_state.freezed.dart';

enum JsonOutputFormat {
  min,
  two,
  four,
  tab,
}

@immutable
@freezed
class JsonState with _$JsonState {
  const factory JsonState({
    required String input,
    required String? output,
    required JsonOutputFormat format,
    required JsonPathState jsonPath,
  }) = _JsonState;

  factory JsonState.init() => const JsonState(
        input: '',
        output: null,
        format: JsonOutputFormat.min,
        jsonPath: JsonPathState(
          input: '',
          value: null,
        ),
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
