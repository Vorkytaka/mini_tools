import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/common/color.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(const ColorState.init());

  static Color? parseColor(String input) {
    final hexRegex = RegExp(r'^#?([0-9a-fA-F]{3}){1,2}$');
    final alphaHexRegex = RegExp(r'^#?([0-9a-fA-F]{8})$');

    if (hexRegex.hasMatch(input)) {
      input = input.replaceFirst('#', '');

      if (input.length == 3) {
        input = input.split('').map((char) => '$char$char').join('');
      }

      input = 'FF$input';

      return Color(int.parse(input, radix: 16));
    } else if (alphaHexRegex.hasMatch(input)) {
      input = input.replaceFirst('#', '');

      return Color(int.parse(input, radix: 16));
    }

    return null;
  }

  void updateInput(String input) {
    final color = parseColor(input);
    emit(state.copyWith(input: input, color: color));
  }

  void setColor(Color color) {
    final String input;
    if (color.a == 255) {
      input = color.toHexString;
    } else {
      input = color.toArgbHexString;
    }

    emit(state.copyWith(input: input, color: color));
  }

  void clear() {
    emit(const ColorState.init());
  }
}

class ColorState {
  final String input;
  final Color? color;

  const ColorState({required this.input, required this.color});

  const ColorState.init() : input = '', color = null;

  ColorState copyWith({String? input, Color? color}) {
    return ColorState(input: input ?? this.input, color: color ?? this.color);
  }
}
