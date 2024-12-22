import 'package:freezed_annotation/freezed_annotation.dart';

part 'regexp_state.freezed.dart';

@immutable
@freezed
class RegExpState with _$RegExpState {
  const factory RegExpState({
    required String input,
    required String testString,
    required bool isGlobal,
    required bool isMultiline,
    required RegExp? regexp,
    required List<RegExpMatch>? matches,
  }) = _RegExpState;

  factory RegExpState.init() => const RegExpState(
        input: '',
        testString: '',
        isGlobal: true,
        isMultiline: true,
        regexp: null,
        matches: null,
      );
}
