import 'package:freezed_annotation/freezed_annotation.dart';

part 'regexp_message.freezed.dart';

@immutable
@freezed
sealed class RegExpMessage with _$RegExpMessage {
  const factory RegExpMessage.updateInput(String input) = _UpdateInput;

  const factory RegExpMessage.updateTestString(String testString) =
      _UpdateTestString;

  const factory RegExpMessage.updateRegExp(RegExp? regexp) = _UpdateRegExp;

  const factory RegExpMessage.updateMatches(List<RegExpMatch>? matches) =
      _UpdateMatches;
}
