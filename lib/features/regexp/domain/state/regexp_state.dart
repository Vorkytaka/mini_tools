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
    required bool isCaseSensitive,
    required bool isUnicode,
    required bool isDotAll,
    required RegExp? regexp,
    required List<RegExpMatch>? matches,
  }) = _RegExpState;

  factory RegExpState.init() => const RegExpState(
    input: '',
    testString: '',
    isGlobal: true,
    isMultiline: true,
    isCaseSensitive: true,
    isUnicode: false,
    isDotAll: false,
    regexp: null,
    matches: null,
  );
}
