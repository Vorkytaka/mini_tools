import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  const TextStyles._();

  static TextStyle get firaCode => GoogleFonts.firaCode().copyWith(
        fontFeatures: [const FontFeature.tabularFigures()],
      );

  static TextStyle get mono => const TextStyle(
        fontFeatures: [FontFeature.tabularFigures()],
      );
}
