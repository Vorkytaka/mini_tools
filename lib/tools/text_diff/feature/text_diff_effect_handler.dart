import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:mini_tea/feature.dart';

import 'effect/text_diff_effect.dart';
import 'message/text_diff_message.dart';

final class TextDiffEffectHandler
    implements EffectHandler<TextDiffEffect, TextDiffMessage> {
  late final _dmp = DiffMatchPatch();

  TextDiffEffectHandler();

  @override
  void call(
    TextDiffEffect effect,
    MsgEmitter<TextDiffMessage> emit,
  ) {
    switch (effect) {
      case CountDiffsEffect():
        return _countDiffs(effect, emit);
    }
  }

  void _countDiffs(
    CountDiffsEffect effect,
    MsgEmitter<TextDiffMessage> emit,
  ) {
    final diffs = _dmp.diff(effect.oldText, effect.newText);
    _dmp.diffCleanupEfficiency(diffs);
    emit(TextDiffMessage.updateDiffs(diffs.toList(growable: false)));
  }
}
