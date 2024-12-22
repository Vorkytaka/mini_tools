import 'package:mini_tea/feature.dart';

import 'regexp_feature.dart';

Next<RegExpState, RegExpEffect> regExpUpdate(
  RegExpState state,
  RegExpMessage message,
) {
  return message.when(
    updateInput: (input) => next(
      state: state.copyWith(input: input),
      effects: [
        RegExpEffect.parseRegExp(
          input: input,
          isMultiline: state.isMultiline,
        ),
      ],
    ),
    updateTestString: (testString) => next(
      state: state.copyWith(testString: testString),
      effects: [
        RegExpEffect.findMatches(
          regexp: state.regexp,
          testString: testString,
          isGlobal: state.isGlobal,
        ),
      ],
    ),
    updateRegExp: (regexp) => next(
      state: state.copyWith(regexp: regexp),
      effects: [
        RegExpEffect.findMatches(
          regexp: regexp,
          testString: state.testString,
          isGlobal: state.isGlobal,
        ),
      ],
    ),
    updateMatches: (matches) => next(state: state.copyWith(matches: matches)),
    updateGlobal: (isGlobal) => next(
      state: state.copyWith(isGlobal: isGlobal),
      effects: [
        RegExpEffect.findMatches(
          regexp: state.regexp,
          testString: state.testString,
          isGlobal: isGlobal,
        ),
      ],
    ),
    updateMultiline: (isMultiline) => next(
      state: state.copyWith(isMultiline: isMultiline),
      effects: [
        RegExpEffect.parseRegExp(
          input: state.input,
          isMultiline: isMultiline,
        ),
      ],
    ),
  );
}
