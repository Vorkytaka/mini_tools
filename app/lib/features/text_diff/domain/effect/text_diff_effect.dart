import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_diff_effect.freezed.dart';

@freezed
@immutable
sealed class TextDiffEffect with _$TextDiffEffect {
  const factory TextDiffEffect.countDiffs({
    required String oldText,
    required String newText,
  }) = CountDiffsEffect;
}
