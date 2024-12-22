import 'package:mini_tea/feature.dart';

import 'regexp_feature.dart';

Next<RegExpState, RegExpEffect> regExpUpdate(
  RegExpState state,
  RegExpMessage message,
) {
  return message.when(
    updateInput: (input) => next(
      state: state.copyWith(input: input),
      effects: [RegExpEffect.parseRegExp(input)],
    ),
    updateTestString: (testString) => next(
      state: state.copyWith(testString: testString),
      effects: [
        RegExpEffect.findMatches(
          regexp: state.regexp,
          testString: testString,
        ),
      ],
    ),
    updateRegExp: (regexp) => next(
      state: state.copyWith(regexp: regexp),
      effects: [
        RegExpEffect.findMatches(
          regexp: regexp,
          testString: state.testString,
        ),
      ],
    ),
    updateMatches: (matches) => next(state: state.copyWith(matches: matches)),
  );
}
