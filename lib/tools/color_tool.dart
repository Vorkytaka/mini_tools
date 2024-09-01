import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';
import 'package:macos_ui/macos_ui.dart';

import '../common/macos_read_only_field.dart';
import '../i18n/strings.g.dart';
import 'tools.dart';

final colorTool = Tool(
  titleBuilder: (context) => Translations.of(context).color.title,
  icon: Icons.color_lens_outlined,
  screenBuilder: (context) => const ColorTool(),
);

class ColorTool extends StatelessWidget {
  const ColorTool({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.color.title),
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
    final t = Translations.of(context);
    const separator = SizedBox(height: 8);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _ColorButton(
                onChanged: (color) {
                  setState(() {
                    if (color.alpha == 255) {
                      _inputController.text = colorToHex(color);
                    } else {
                      _inputController.text = colorToARGBHex(color);
                    }
                  });
                },
                color: _color,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(t.common.input),
                        const SizedBox(width: 12),
                        PushButton(
                          controlSize: ControlSize.regular,
                          secondary: true,
                          onPressed: () => _inputController.text = '',
                          child: Text(t.common.clear),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 200,
                      child: MacosTextField(
                        placeholder: t.color.inputPlaceholder,
                        inputFormatters: const [UpperCaseInputFormatter()],
                        controller: _inputController,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: Column(
              children: [
                _Item(
                  title: t.color.titles.hex,
                  value: colorToHex(_color),
                ),
                separator,
                _Item(
                  title: t.color.titles.hexWithAlpha,
                  value: colorToARGBHex(_color),
                ),
                separator,
                _Item(
                  title: t.color.titles.rgb,
                  value: colorToRGB(_color),
                ),
                separator,
                _Item(
                  title: t.color.titles.rgba,
                  value: colorToRGBA(_color),
                ),
                separator,
                _Item(
                  title: t.color.titles.hsl,
                  value: colorToHSL(_color),
                ),
                separator,
                _Item(
                  title: t.color.titles.hsb,
                  value: colorToHSB(_color),
                ),
                separator,
                _Item(
                  title: t.color.titles.hwb,
                  value: colorToHWB(_color),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onInputUpdate() {
    final color = parseColor(_inputController.text);
    setState(() {
      _color = color;
    });
  }

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

  static String colorToHSB(Color? color) {
    if (color == null) {
      return '';
    }

    double hue, saturation, brightness;

    final int r = color.red;
    final int g = color.green;
    final int b = color.blue;

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

  static String colorToHWB(Color? color) {
    if (color == null) {
      return '';
    }

    final r = color.red / 255.0;
    final g = color.green / 255.0;
    final b = color.blue / 255.0;

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

class _Item extends StatelessWidget {
  final String title;
  final String value;

  const _Item({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: MacosReadonlyField(
                text: value,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 4),
            MacosIconButton(
              onPressed: () {
                if (value.isNotEmpty) {
                  Clipboard.setData(ClipboardData(text: value));
                }
              },
              icon: const MacosIcon(CupertinoIcons.doc_on_clipboard_fill),
            ),
          ],
        ),
      ],
    );
  }
}

class _ColorButton extends StatefulWidget {
  final Color? color;
  final ValueChanged<Color> onChanged;

  const _ColorButton({
    required this.onChanged,
    this.color,
  });

  @override
  State<_ColorButton> createState() => _ColorButtonState();
}

class _ColorButtonState extends State<_ColorButton> {
  final _overlayController = OverlayPortalController();
  final _link = LayerLink();

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (widget.color == null) {
      child = const Placeholder();
    }

    return CompositedTransformTarget(
      link: _link,
      child: OverlayPortal(
        controller: _overlayController,
        overlayChildBuilder: (context) {
          return CompositedTransformFollower(
            link: _link,
            targetAnchor: Alignment.bottomCenter,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: SizedBox(
                width: 300,
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ColorPicker(
                      color: widget.color ?? const Color(0xffff0000),
                      onChanged: widget.onChanged,
                      initialPicker: Picker.wheel,
                      pickerOrientation: PickerOrientation.portrait,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: GestureDetector(
          onTap: _overlayController.toggle,
          child: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: widget.color,
              border: Border.all(width: 2, color: MacosColors.headerTextColor),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            clipBehavior: Clip.hardEdge,
            child: child,
          ),
        ),
      ),
    );
  }
}

class UpperCaseInputFormatter implements TextInputFormatter {
  const UpperCaseInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) =>
      newValue.copyWith(text: newValue.text.toUpperCase());
}
