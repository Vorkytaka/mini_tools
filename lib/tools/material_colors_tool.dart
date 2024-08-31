import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tools/tools/tools.dart';

final materialColorTool = Tool(
  titleBuilder: (context) => 'Material Colors',
  icon: Icons.invert_colors_sharp,
  screenBuilder: (context) => const MaterialColorTool(),
);

const _materialColors = <MaterialColor>[
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.lightBlue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.lightGreen,
  Colors.lime,
  Colors.yellow,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

final _materialColorItems =
    _materialColors.map((color) => color.items).toList(growable: false);

class MaterialColorTool extends StatelessWidget {
  const MaterialColorTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text('Material Colors'),
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
    // TODO(Vorkytaka): Use CustomScrollView
    return SingleChildScrollView(
      controller: controller,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.start,
        children: _materialColorItems
            .map((colors) => _MaterialColor(colors: colors))
            .toList(growable: false),
      ),
    );
  }
}

class _MaterialColor extends StatelessWidget {
  final List<_ColorItem> colors;

  const _MaterialColor({
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: colors
          .map(
            (color) => MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: color.hex));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  color: color.color,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(
                        color: color.brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(color.title), Text(color.hex)],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(growable: false),
    );
  }
}

const _materialColorsValues = [
  50,
  100,
  200,
  300,
  400,
  500,
  600,
  700,
  800,
  900,
];

extension on MaterialColor {
  List<_ColorItem> get items {
    return List.generate(
      _materialColorsValues.length,
      (i) => _ColorItem(
        color: this[_materialColorsValues[i]]!,
        title: '${_materialColorsValues[i]}',
        hex: '#ff0000',
        brightness: ThemeData.estimateBrightnessForColor(
            this[_materialColorsValues[i]]!),
      ),
      growable: false,
    );
  }
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
