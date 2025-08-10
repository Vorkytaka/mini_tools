import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.toARGB32();
  }
}

final class EdgeInsetsConverter
    implements JsonConverter<EdgeInsets, Map<String, dynamic>> {
  const EdgeInsetsConverter();

  static const _left = 'l';
  static const _right = 'r';
  static const _top = 't';
  static const _bottom = 'b';

  @override
  EdgeInsets fromJson(Map<String, dynamic> json) {
    return EdgeInsets.fromLTRB(
      json[_left]!,
      json[_top]!,
      json[_right]!,
      json[_bottom]!,
    );
  }

  @override
  Map<String, dynamic> toJson(EdgeInsets object) {
    return {
      _left: object.left,
      _right: object.right,
      _top: object.top,
      _bottom: object.bottom,
    };
  }
}
