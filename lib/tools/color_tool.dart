import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

import '../common/macos_read_only_field.dart';
import 'tools.dart';

final colorTool = Tool(
  titleBuilder: (context) => 'Color tool',
  icon: Icons.color_lens_outlined,
  screenBuilder: (context) => const ColorTool(),
);

class ColorTool extends StatelessWidget {
  const ColorTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text('Color tool'),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) => const _Body(),
        ),
      ],
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _inputController = TextEditingController();
  Color? _color;

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputUpdate);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Row(
            children: [
              Expanded(
                child: MacosTextField(
                  controller: _inputController,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: _color,
                  border:
                      Border.all(width: 2, color: MacosColors.headerTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            MacosReadonlyField(text: colorToHex(_color)),
            MacosReadonlyField(text: colorToARGBHex(_color)),
            MacosReadonlyField(text: colorToRGB(_color)),
            MacosReadonlyField(text: colorToRGBA(_color)),
            MacosReadonlyField(text: colorToHSL(_color)),
            // MacosReadonlyField(text: colorToHSB(_color)),
            // MacosReadonlyField(text: colorToHWB(_color)),
          ],
        ),
      ],
    );
  }

  void _onInputUpdate() {
    final color = parseColor(_inputController.text);
    setState(() {
      _color = color;
    });
  }

  Color? parseColor(String input) {
    final hexRegex = RegExp(r'^#?([0-9a-fA-F]{3}){1,2}$');
    final alphaHexRegex = RegExp(r'^#?([0-9a-fA-F]{8})$');

    if (hexRegex.hasMatch(input)) {
      // Remove the leading hash, if present
      input = input.replaceFirst('#', '');

      if (input.length == 3) {
        // Handle shorthand hex codes
        input = input.split('').map((char) => '$char$char').join('');
      }

      // Add an opaque alpha value to the hex string if it's not already present
      input = 'FF$input';

      return Color(int.parse(input, radix: 16));
    } else if (alphaHexRegex.hasMatch(input)) {
      // Remove the leading hash, if present
      input = input.replaceFirst('#', '');

      return Color(int.parse(input, radix: 16));
    }

    // If the input is not a valid hex color code, return null
    return null;
  }

  static String colorToHex(Color? color) {
    if (color == null) {
      return '';
    }
    return '#${color.value.toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }

  static String colorToARGBHex(Color? color) {
    if (color == null) {
      return '';
    }
    return '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }

  static String colorToRGB(Color? color) {
    if (color == null) {
      return '';
    }
    return 'rgb(${color.red}, ${color.green}, ${color.blue})';
  }

  static String colorToRGBA(Color? color) {
    if (color == null) {
      return '';
    }
    return 'rgba(${color.red}, ${color.green}, ${color.blue}, ${color.opacity})';
  }

  static String colorToHSL(Color? color) {
    if (color == null) {
      return '';
    }

    final hslColor = HSLColor.fromColor(color);
    return 'hsl(${hslColor.hue.round()}, ${(hslColor.saturation * 100).round()}%, ${(hslColor.lightness * 100).round()}%)';
  }

  // TODO(Vorkytaka): Fix HSB
  static String colorToHSB(Color? color) {
    if (color == null) {
      return '';
    }

    final hslColor = HSLColor.fromColor(color);
    final hue = hslColor.hue.round();
    final saturation = (hslColor.saturation * 100).round();
    final brightness =
        (hslColor.lightness * 2.0 * (1.0 - hslColor.saturation / 2))
                .clamp(0.0, 1.0) *
            100;
    return 'hsb($hue, $saturation%, ${brightness.round()}%)';
  }

  // TODO(Vorkytaka): Fix HWB
  String colorToHWB(Color? color) {
    if (color == null) {
      return '';
    }

    final hslColor = HSLColor.fromColor(color);
    final whiteness = (hslColor.whiteness() * 100).round();
    final blackness = (hslColor.blackness() * 100).round();
    return 'hwb(${hslColor.hue.round()}, $whiteness%, $blackness%)';
  }
}

extension on HSLColor {
  double whiteness() => lightness * (1 - saturation);

  double blackness() => 1 - lightness * (1 + saturation);
}
