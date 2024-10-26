import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class RegExpCubit extends Cubit<RegExpState> {
  RegExpCubit() : super(const RegExpState.init());

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

  void updateRegExp(String input) {
    final regexp = fromString(input);

    if (regexp != null) {
      emit(state.copyWith(regexp: regexp));
    } else {
      emit(state.dropRegExp());
    }

    _find();
  }

  void updateExample(String example) {
    emit(state.copyWith(example: example));
    _find();
  }

  void _find() {
    final regexp = state.regexp;

    if (regexp == null) {
      emit(state.dropMatches());
      return;
    }

    final matches = regexp.allMatches(state.example);
    emit(state.copyWith(matches: matches));
  }
}

@immutable
class RegExpState {
  final RegExp? regexp;
  final String example;
  final Iterable<RegExpMatch>? matches;

  const RegExpState({
    required this.regexp,
    required this.example,
    required this.matches,
  });

  const RegExpState.init()
      : regexp = null,
        example = '',
        matches = null;

  RegExpState copyWith({
    RegExp? regexp,
    String? example,
    Iterable<RegExpMatch>? matches,
  }) =>
      RegExpState(
        regexp: regexp ?? this.regexp,
        example: example ?? this.example,
        matches: matches ?? this.matches,
      );

  RegExpState dropRegExp() => RegExpState(
        regexp: null,
        example: example,
        matches: matches,
      );

  RegExpState dropMatches() => RegExpState(
        regexp: regexp,
        example: example,
        matches: null,
      );
}
