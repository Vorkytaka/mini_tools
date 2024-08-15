import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class MacosReadonlyField extends StatefulWidget {
  final String text;

  const MacosReadonlyField({
    required this.text,
    super.key,
  });

  @override
  State<MacosReadonlyField> createState() => _MacosReadonlyFieldState();
}

class _MacosReadonlyFieldState extends State<MacosReadonlyField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.text;
  }

  @override
  void didUpdateWidget(covariant MacosReadonlyField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.text != widget.text) {
      _controller.text = widget.text;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosTextField(
      controller: _controller,
      readOnly: true,
    );
  }
}
