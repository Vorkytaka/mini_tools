import 'package:flutter/material.dart';

enum MiniSidebarItemStatus { idle, hovered, selected }

final class MiniSidebarItem extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? trailing;
  final VoidCallback onPressed;
  final MiniSidebarItemStatus status;

  const MiniSidebarItem({
    required this.title,
    required this.onPressed,
    required this.status,
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final leading = this.leading;
    final trailing = this.trailing;

    final theme = Theme.of(context);
    final backgroundColor = switch (status) {
      MiniSidebarItemStatus.idle => Colors.transparent,
      MiniSidebarItemStatus.hovered => theme.hoverColor,
      MiniSidebarItemStatus.selected => theme.focusColor,
    };

    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 4),
          child: SizedBox(
            height: 40,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (leading != null) ...[
                  leading,
                  const SizedBox(width: 4),
                ],
                DefaultTextStyle.merge(maxLines: 1, child: title),
                if (trailing != null) ...[
                  const Spacer(),
                  trailing,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
