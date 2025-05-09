import 'package:freezed_annotation/freezed_annotation.dart';

part 'regexp_message.freezed.dart';

@immutable
@freezed
sealed class RegExpMessage with _$RegExpMessage {
  const factory RegExpMessage.updateInput(String input) = _UpdateInput;

  // ignore:avoid_positional_boolean_parameters
  const factory RegExpMessage.updateGlobal(bool isGlobal) = _UpdateGlobal;

  // ignore:avoid_positional_boolean_parameters
  const factory RegExpMessage.updateMultiline(bool isMultiline) =
      _UpdateMultiline;

  // ignore:avoid_positional_boolean_parameters
  const factory RegExpMessage.updateCaseSensitive(bool isCaseSensitive) =
      _UpdateCaseSensitive;

  // ignore:avoid_positional_boolean_parameters
  const factory RegExpMessage.updateUnicode(bool isUnicode) = _UpdateUnicode;

  // ignore:avoid_positional_boolean_parameters
  const factory RegExpMessage.updateDotAll(bool isDotAll) = _UpdateDotAll;

  const factory RegExpMessage.updateTestString(String testString) =
      _UpdateTestString;

  const factory RegExpMessage.updateRegExp(RegExp? regexp) = _UpdateRegExp;

  const factory RegExpMessage.updateMatches(List<RegExpMatch>? matches) =
      _UpdateMatches;
}
