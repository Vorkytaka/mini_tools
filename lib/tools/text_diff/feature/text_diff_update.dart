import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:mini_tea/feature.dart';

import 'effect/text_diff_effect.dart';
import 'message/text_diff_message.dart';
import 'state/text_diff_state.dart';

Next<TextDiffState, TextDiffEffect> textDiffUpdate(
  TextDiffState state,
  TextDiffMessage message,
) {
  switch (message) {
    case UpdateNewTextMessage():
      return next(
        state: state.copyWith(newText: message.text),
        effects: [
          if (_shouldRecountDiffs(state, state.oldText, message.text))
            TextDiffEffect.countDiffs(
              oldText: state.oldText,
              newText: message.text,
            )
        ],
      );
    case UpdateOldTextMessage():
      return next(
        state: state.copyWith(oldText: message.text),
        effects: [
          if (_shouldRecountDiffs(state, message.text, state.newText))
            TextDiffEffect.countDiffs(
              oldText: message.text,
              newText: state.newText,
            ),
        ],
      );
    case UpdateDiffsMessage():
      final oldDiffs = <Diff>[];
      final newDiffs = <Diff>[];
      for (final diff in message.diffs) {
        if (diff.operation == DIFF_INSERT) {
          newDiffs.add(diff);
        } else if (diff.operation == DIFF_DELETE) {
          oldDiffs.add(diff);
        } else {
          newDiffs.add(diff);
          oldDiffs.add(diff);
        }
      }

      return next(
        state: state.copyWith(
          diffs: message.diffs,
          newDiffs: newDiffs,
          oldDiffs: oldDiffs,
        ),
      );
  }
}

bool _shouldRecountDiffs(TextDiffState state, String oldText, String newText) {
  return state.oldText != oldText || state.newText != newText;
}
