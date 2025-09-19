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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 16,
          child: DefaultTextStyle(
            style: theme.typography.caption2,
            child: title,
          ),
        ),
        const SizedBox(height: 8),
        selector,
      ],
    );
  }
}
