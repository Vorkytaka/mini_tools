import 'package:flutter/material.dart';

class CopyOverlay extends StatefulWidget {
  final Widget child;

  const CopyOverlay({
    required this.child,
    super.key,
  });

  @override
  State<CopyOverlay> createState() => _CopyOverlayState();

  static void show(BuildContext context) =>
      context.findAncestorStateOfType<_CopyOverlayState>()?._showNotification();

  static void hide(BuildContext context) =>
      context.findAncestorStateOfType<_CopyOverlayState>()?._hideNotification();
}

class _CopyOverlayState extends State<CopyOverlay> {
  OverlayEntry? _entry;

  void _showNotification() {
    _hideNotification();

    final overlay = Overlay.maybeOf(context);
    if (overlay != null) {
      final entry = OverlayEntry(
        builder: (context) => const Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: _CopyNotification(),
          ),
        ),
      );
      _entry = entry;
      overlay.insert(entry);
    }
  }

  void _hideNotification() {
    if (_entry?.mounted ?? false) {
      _entry?.remove();
      _entry = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class _CopyNotification extends StatelessWidget {
  const _CopyNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.grey.shade800,
      ),
      child: Text('Copied!'),
    );
  }
}
