import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_diff_message.freezed.dart';

@freezed
@immutable
sealed class TextDiffMessage with _$TextDiffMessage {
  const factory TextDiffMessage.updateNewText(String text) =
      UpdateNewTextMessage;

  const factory TextDiffMessage.updateOldText(String text) =
      UpdateOldTextMessage;

  const factory TextDiffMessage.updateDiffs(List<Diff> diffs) =
      UpdateDiffsMessage;
}
