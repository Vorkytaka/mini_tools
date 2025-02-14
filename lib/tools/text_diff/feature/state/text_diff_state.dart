import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_diff_state.freezed.dart';

@freezed
@immutable
class TextDiffState with _$TextDiffState {
  const factory TextDiffState({
    required String oldText,
    required String newText,
    required List<Diff> oldDiffs,
    required List<Diff> newDiffs,
    required List<Diff> diffs,
  }) = _TextDiffState;

  factory TextDiffState.init() => const TextDiffState(
        oldText: '',
        newText: '',
        oldDiffs: [],
        newDiffs: [],
        diffs: [],
      );
}
