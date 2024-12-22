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
      parseRegExp: (input) {
        final regexp = fromString(input);
        emit(RegExpMessage.updateRegExp(regexp));
      },
      findMatches: (regexp, testString) {
        if (regexp == null) {
          emit(const RegExpMessage.updateMatches(null));
        } else {
          final matches = regexp.allMatches(testString);
          emit(RegExpMessage.updateMatches(matches.toList(growable: false)));
        }
      },
    );
  }

  static RegExp? fromString(String? input) {
    if (input == null || input.isEmpty) {
      return null;
    }

    try {
      return RegExp(input);
    } on FormatException catch (_) {
      return null;
    }
  }
}
