part of 'material_colors_tool.dart';

/// Just a wrapper for the Material Colors and their accent colors.
class _MaterialAndAccentColor {
  final String title;
  final MaterialColor color;
  final MaterialAccentColor? accentColor;

  const _MaterialAndAccentColor(
    this.title,
    this.color, [
    this.accentColor,
  ]);
}

/// List of Material Colors with their accent colors.
const _materialAndAccentColors = [
  _MaterialAndAccentColor(
    'Red',
    Colors.red,
    Colors.redAccent,
  ),
  _MaterialAndAccentColor(
    'Pink',
    Colors.pink,
    Colors.pinkAccent,
  ),
  _MaterialAndAccentColor(
    'Purple',
    Colors.purple,
    Colors.purpleAccent,
  ),
  _MaterialAndAccentColor(
    'Deep Purple',
    Colors.deepPurple,
    Colors.deepPurpleAccent,
  ),
  _MaterialAndAccentColor(
    'Indigo',
    Colors.indigo,
    Colors.indigoAccent,
  ),
  _MaterialAndAccentColor(
    'Blue',
    Colors.blue,
    Colors.blueAccent,
  ),
  _MaterialAndAccentColor(
    'Light Blue',
    Colors.lightBlue,
    Colors.lightBlueAccent,
  ),
  _MaterialAndAccentColor(
    'Cyan',
    Colors.cyan,
    Colors.cyanAccent,
  ),
  _MaterialAndAccentColor(
    'Teal',
    Colors.teal,
    Colors.tealAccent,
  ),
  _MaterialAndAccentColor(
    'Green',
    Colors.green,
    Colors.greenAccent,
  ),
  _MaterialAndAccentColor(
    'Light Green',
    Colors.lightGreen,
    Colors.lightGreenAccent,
  ),
  _MaterialAndAccentColor(
    'Lime',
    Colors.lime,
    Colors.limeAccent,
  ),
  _MaterialAndAccentColor(
    'Yellow',
    Colors.yellow,
    Colors.yellowAccent,
  ),
  _MaterialAndAccentColor(
    'Amber',
    Colors.amber,
    Colors.amberAccent,
  ),
  _MaterialAndAccentColor(
    'Orange',
    Colors.orange,
    Colors.orangeAccent,
  ),
  _MaterialAndAccentColor(
    'Deep Orange',
    Colors.deepOrange,
    Colors.deepOrangeAccent,
  ),
  _MaterialAndAccentColor(
    'Brown',
    Colors.brown,
  ),
  _MaterialAndAccentColor(
    'Grey',
    Colors.grey,
  ),
  _MaterialAndAccentColor(
    'Blue Grey',
    Colors.blueGrey,
  ),
];

final _materialColorItems = _materialAndAccentColors
    .map(
      (item) => _ColorCollection(
        name: item.title,
        colors: [
          ...item.color.items,
          ...?item.accentColor?.items,
        ],
      ),
    )
    .toList(growable: false);

const _materialColorsValues = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
const _materialAccentColorsValues = [100, 200, 400, 700];

extension on MaterialColor {
  List<_ColorItem> get items {
    return List.generate(
      _materialColorsValues.length,
      (i) {
        final shade = _materialColorsValues[i];
        final color = this[shade]!;
        return _ColorItem(
          color: color,
          title: '$shade',
          hex: color.toHexString,
          brightness: ThemeData.estimateBrightnessForColor(color),
        );
      },
      growable: false,
    );
  }
}

extension on MaterialAccentColor {
  List<_ColorItem> get items {
    return List.generate(
      _materialAccentColorsValues.length,
      (i) {
        final shade = _materialAccentColorsValues[i];
        final color = this[shade]!;
        return _ColorItem(
          color: color,
          title: '$shade',
          hex: color.toHexString,
          brightness: ThemeData.estimateBrightnessForColor(color),
        );
      },
      growable: false,
    );
  }
}

class _ColorCollection {
  final String name;
  final List<_ColorItem> colors;

  const _ColorCollection({
    required this.name,
    required this.colors,
  });
}

@immutable
class _ColorItem {
  final Color color;
  final String title;
  final String hex;
  final Brightness brightness;

  const _ColorItem({
    required this.color,
    required this.title,
    required this.hex,
    required this.brightness,
  });
}
