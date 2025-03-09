import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:macos_ui/macos_ui.dart';

// ignore:implementation_imports
import 'package:macos_ui/src/utils/utils.dart';

class HintButton extends StatelessWidget {
  final Widget hint;

  HintButton({
    required String hint,
    super.key,
  }) : hint = Text(hint);

  const HintButton.rich({
    required this.hint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return CustomPopup(
      arrowColor: theme.popupButtonTheme.popupColor,
      backgroundColor: theme.popupButtonTheme.popupColor,
      content: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 300,
        ),
        child: hint,
      ),
      child: CircleAvatar(
        backgroundColor: theme.helpButtonTheme.color,
        foregroundColor: helpIconLuminance(
          theme.helpButtonTheme.color!,
          theme.brightness == Brightness.dark,
        ),
        radius: 10,
        child: const Icon(
          CupertinoIcons.question,
          size: 13,
        ),
      ),
    );
  }
}
