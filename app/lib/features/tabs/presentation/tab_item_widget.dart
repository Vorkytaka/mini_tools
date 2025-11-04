import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

import '../../../core/presentation/mini_sidebar.dart';

final class TabItemWidget extends StatefulWidget {
  final Widget icon;
  final Widget title;
  final bool isSelected;
  final VoidCallback onClosePressed;
  final VoidCallback onPressed;

  const TabItemWidget({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onClosePressed,
    required this.onPressed,
    super.key,
  });

  @override
  State<TabItemWidget> createState() => _TabItemWidgetState();
}

class _TabItemWidgetState extends State<TabItemWidget> {
  MiniSidebarItemStatus _status = MiniSidebarItemStatus.idle;

  @override
  void initState() {
    super.initState();

    _status = widget.isSelected
        ? MiniSidebarItemStatus.selected
        : MiniSidebarItemStatus.idle;
  }

  @override
  void didUpdateWidget(covariant TabItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isSelected != oldWidget.isSelected) {
      setState(() {
        _status = widget.isSelected
            ? MiniSidebarItemStatus.selected
            : MiniSidebarItemStatus.idle;
      });
    }
  }

  Widget? closeButton(BuildContext context) {
    if (_status == MiniSidebarItemStatus.hovered || widget.isSelected) {
      final theme = Theme.of(context);

      return MacosIconButton(
        icon: const Icon(Icons.close, size: 16),
        hoverColor: theme.focusColor,
        onPressed: widget.onClosePressed,
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _status = widget.isSelected
            ? MiniSidebarItemStatus.selected
            : MiniSidebarItemStatus.hovered;
      }),
      onExit: (_) => setState(() {
        _status = widget.isSelected
            ? MiniSidebarItemStatus.selected
            : MiniSidebarItemStatus.idle;
      }),
      child: MiniSidebarItem(
        leading: widget.icon,
        title: widget.title,
        trailing: closeButton(context),
        onPressed: widget.onPressed,
        status: _status,
      ),
    );
  }
}
