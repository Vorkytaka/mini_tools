import 'package:freezed_annotation/freezed_annotation.dart';

part 'regexp_state.freezed.dart';

@immutable
@freezed
class RegExpState with _$RegExpState {
  const factory RegExpState({
    required String input,
    required String testString,
    required RegExp? regexp,
    required List<RegExpMatch>? matches,
  }) = _RegExpState;

  factory RegExpState.init() => const RegExpState(
        input: '',
        testString: '',
        regexp: null,
        matches: null,
      );
}
