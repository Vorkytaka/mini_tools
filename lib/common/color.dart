import 'package:flutter/painting.dart';

String? colorToHexString(Color? color) => color?.toHexString;

String? colorToArgbHexString(Color? color) => color?.toArgbHexString;

String? colorToRgbString(Color? color) => color?.toRgbString;

String? colorToRgbaString(Color? color) => color?.toRgbaString;

String? colorToHslString(Color? color) => color?.toHslString;

String? colorToHsbString(Color? color) => color?.toHsbString;

String? colorToHwbString(Color? color) => color?.toHwbString;

extension ColorUtils on Color {
  String get toHexString {
    return '#${value.toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }

  String get toArgbHexString {
    return '#${value.toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }

  String get toRgbString {
    return 'rgb($red, $green, $blue)';
  }

  String get toRgbaString {
    return 'rgba($red, $green, $blue, $opacity)';
  }

  String get toHslString {
    final hslColor = HSLColor.fromColor(this);
    return 'hsl(${hslColor.hue.round()}, ${(hslColor.saturation * 100).round()}%, ${(hslColor.lightness * 100).round()}%)';
  }

  String get toHsbString {
    double hue, saturation, brightness;

    final int r = red;
    final int g = green;
    final int b = blue;

    final double max = [r, g, b].reduce((a, b) => a > b ? a : b) / 255.0;
    final double min = [r, g, b].reduce((a, b) => a < b ? a : b) / 255.0;
    brightness = max;

    final double delta = max - min;
    saturation = max == 0 ? 0 : delta / max;

    if (max == min) {
      hue = 0;
    } else if (max == r / 255.0) {
      hue = 60 * ((g - b) / 255.0 / delta + (g < b ? 6 : 0));
    } else if (max == g / 255.0) {
      hue = 60 * ((b - r) / 255.0 / delta + 2);
    } else {
      hue = 60 * ((r - g) / 255.0 / delta + 4);
    }

    return 'hsb(${hue.round()}, ${(saturation * 100).round()}%, ${(brightness * 100).round()}%)';
  }

  String get toHwbString {
    final r = red / 255.0;
    final g = green / 255.0;
    final b = blue / 255.0;

    final max = [r, g, b].reduce((a, b) => a > b ? a : b);
    final min = [r, g, b].reduce((a, b) => a < b ? a : b);
    final delta = max - min;

    double hue = 0;
    if (delta != 0) {
      if (max == r) {
        hue = (g - b) / delta;
      } else if (max == g) {
        hue = 2 + (b - r) / delta;
      } else {
        hue = 4 + (r - g) / delta;
      }
    }
    hue = (hue * 60) % 360;
    if (hue < 0) {
      hue += 360;
    }

    final white = min;
    final black = 1 - max;

    return 'hwb(${hue.round()}, ${(white * 100).round()}%, ${(black * 100).round()}%)';
  }
}
