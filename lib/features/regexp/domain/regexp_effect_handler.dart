import 'dart:async';

import 'package:mini_tea/feature.dart';

import 'effect/regexp_effect.dart';
import 'message/regexp_message.dart';

final class RegExpEffectHandler
    implements EffectHandler<RegExpEffect, RegExpMessage> {
  const RegExpEffectHandler();

  @override
  FutureOr<void> call(RegExpEffect effect, MsgEmitter<RegExpMessage> emit) {
    effect.when(
      parseRegExp: (input, isMultiline, isCaseSensitive, isUnicode, isDotAll) {
        final regexp = fromString(
          input,
          isMultiline: isMultiline,
          isCaseSensitive: isCaseSensitive,
          isUnicode: isUnicode,
          isDotAll: isDotAll,
        );
        emit(RegExpMessage.updateRegExp(regexp));
      },
      findMatches: (regexp, testString, isGlobal) {
        if (regexp == null) {
          emit(const RegExpMessage.updateMatches(null));
        } else {
          final List<RegExpMatch> matches;
          if (isGlobal) {
            matches = regexp.allMatches(testString).toList(growable: false);
          } else {
            final match = regexp.firstMatch(testString);
            matches = [if (match != null) match];
          }
          emit(RegExpMessage.updateMatches(matches));
        }
      },
    );
  }

  static RegExp? fromString(
    String? input, {
    required bool isMultiline,
    required bool isCaseSensitive,
    required bool isUnicode,
    required bool isDotAll,
  }) {
    if (input == null || input.isEmpty) {
      return null;
    }

    try {
      return RegExp(
        input,
        multiLine: isMultiline,
        caseSensitive: isCaseSensitive,
        unicode: isUnicode,
        dotAll: isDotAll,
      );
    } on FormatException catch (_) {
      return null;
    }
  }
}
