import 'package:freezed_annotation/freezed_annotation.dart';

part 'regexp_effect.freezed.dart';

@immutable
@freezed
sealed class RegExpEffect with _$RegExpEffect {
  const factory RegExpEffect.parseRegExp(String input) = _ParseRegExp;

  const factory RegExpEffect.findMatches({
    required RegExp? regexp,
    required String testString,
  }) = _FindMatches;
}
