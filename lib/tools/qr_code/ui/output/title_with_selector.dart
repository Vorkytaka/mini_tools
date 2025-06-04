import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class TitleWithSelector extends StatelessWidget {
  final Widget title;
  final Widget selector;

  const TitleWithSelector({
    required this.title,
    required this.selector,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        selector,
        const SizedBox(height: 8),
        DefaultTextStyle(
          style: theme.typography.caption2,
          child: title,
        ),
      ],
    );
  }
}
