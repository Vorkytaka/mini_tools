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
      int diffCount = 0;
      for (final diff in message.diffs) {
        if (diff.operation == DIFF_INSERT) {
          newDiffs.add(diff);
          diffCount++;
        } else if (diff.operation == DIFF_DELETE) {
          oldDiffs.add(diff);
          diffCount++;
        } else {
          newDiffs.add(diff);
          oldDiffs.add(diff);
        }
      }

      final oldDiffLines = splitDiffsIntoLines(oldDiffs);
      final newDiffLines = splitDiffsIntoLines(newDiffs);

      return next(
        state: state.copyWith(
          diffs: message.diffs,
          newDiffs: newDiffs,
          oldDiffs: oldDiffs,
          oldDiffLines: oldDiffLines,
          newDiffLines: newDiffLines,
          diffCount: diffCount,
        ),
      );
  }
}

bool _shouldRecountDiffs(TextDiffState state, String oldText, String newText) {
  return state.oldText != oldText || state.newText != newText;
}

List<List<Diff>> splitDiffsIntoLines(List<Diff> diffs) {
  final List<List<Diff>> lines = [];
  List<Diff> currentLine = [];
  for (final diff in diffs) {
    final text = diff.text;
    int start = 0;
    while (true) {
      final int index = text.indexOf('\n', start);
      if (index == -1) {
        // Add remaining text if any
        if (start < text.length) {
          final String part = text.substring(start);
          currentLine.add(Diff(diff.operation, part));
        }
        break;
      } else {
        // Split at the newline, including it in the part
        final String part = text.substring(start, index + 1);
        currentLine.add(Diff(diff.operation, part.replaceFirst('\n', '')));
        if (part.endsWith('\n')) {
          lines.add(currentLine);
          currentLine = [];
        }
        start = index + 1;
      }
    }
  }
  // Add any remaining diffs as the last line
  if (currentLine.isNotEmpty) {
    lines.add(currentLine);
  }
  return lines;
}
