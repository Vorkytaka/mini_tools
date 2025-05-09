import 'package:flutter/widgets.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:macos_ui/macos_ui.dart';

import '../color_picker/color_picker.dart';

class MiniColorPicker extends StatefulWidget {
  final ColorChangedCallback onColorChanged;
  final Color selectedColor;

  const MiniColorPicker({
    required this.onColorChanged,
    required this.selectedColor,
    super.key,
  });

  @override
  State<MiniColorPicker> createState() => _MiniColorPickerState();
}

class _MiniColorPickerState extends State<MiniColorPicker> {
  Color _color = const Color(0xffff0000);

  @override
  void initState() {
    super.initState();

    _color = widget.selectedColor;
  }

  @override
  void didUpdateWidget(covariant MiniColorPicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.selectedColor != _color) {
      _color = widget.selectedColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return CustomPopup(
      arrowColor: theme.popupButtonTheme.popupColor,
      backgroundColor: theme.popupButtonTheme.popupColor,
      content: SizedBox(
        height: 240,
        width: 300,
        child: ColorPicker(
          showOpacity: false,
          showHexCode: false,
          initialColor: _color,
          onColorChanged: widget.onColorChanged,
        ),
      ),
      child: SizedBox(
        height: 50,
        width: 50,
        child: ColoredBox(color: _color),
      ),
    );
  }
}
