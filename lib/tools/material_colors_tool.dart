import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../common/color.dart';
import '../i18n/strings.g.dart';
import '../tool/base_tool.dart';

final materialColorTool = BaseTool(
  titleBuilder: (context) => Translations.of(context).materialColors.title,
  icon: Icons.invert_colors_sharp,
  screenBuilder: (context) => const MaterialColorTool(),
);

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

class MaterialColorTool extends StatelessWidget {
  const MaterialColorTool({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.materialColors.title),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => _Body(controller: controller),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final ScrollController? controller;

  const _Body({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      desiredItemWidth: 200,
      minSpacing: 10,
      children: _materialColorItems
          .map((colors) => _MaterialColor(collection: colors))
          .toList(growable: false),
    );
  }
}

class _MaterialColor extends StatelessWidget {
  final _ColorCollection collection;

  const _MaterialColor({
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    final colors = collection.colors;

    return Column(
      children: [
        for (int i = 0; i < colors.length; i++)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: colors[i].hex));
              },
              child: Container(
                width: 200,
                height: 50,
                color: colors[i].color,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      color: colors[i].brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(i == 0
                            ? '${collection.name} ${colors[i].title}'
                            : colors[i].title),
                        Text(colors[i].hex)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}

const _materialColorsValues = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

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

const _materialAccentColorsValues = [100, 200, 400, 700];

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
