import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';

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

class _CopyOverlayState extends State<CopyOverlay>
    with SingleTickerProviderStateMixin {
  OverlayEntry? _entry;
  Offset? _cursorPosition;

  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1500),
  );

  @override
  void initState() {
    super.initState();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _hideNotification();
      }
    });
  }

  @override
  void dispose() {
    _hideNotification();
    _controller.dispose();
    super.dispose();
  }

  void _showNotification() {
    _hideNotification();

    final overlay = Overlay.maybeOf(context);
    if (overlay != null) {
      final entry = OverlayEntry(
        builder: (context) => _CopyNotificationPositioned(
          animation: _controller,
          cursorPosition: _cursorPosition,
        ),
      );
      _entry = entry;
      overlay.insert(entry);
      _controller.forward(from: 0);
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
    return MouseRegion(
      onHover: (details) {
        _cursorPosition = details.position;
      },
      child: widget.child,
    );
  }
}

class _CopyNotificationPositioned extends StatelessWidget {
  final Animation<double> animation;
  final Offset? cursorPosition;

  const _CopyNotificationPositioned({
    required this.animation,
    required this.cursorPosition,
  });

  @override
  Widget build(BuildContext context) {
    final cursorPosition = this.cursorPosition;

    if (cursorPosition != null) {
      return Positioned(
        top: cursorPosition.dy - 8 - 8 - 8 - 8,
        left: cursorPosition.dx - 40,
        child: _CopyNotificationAnimation(animation: animation),
      );
    }
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 8),
        child: _CopyNotificationAnimation(animation: animation),
      ),
    );
  }
}

class _CopyNotificationAnimation extends StatelessWidget {
  final Animation<double> animation;

  final Animation<double> _opacity;
  final Animation<double> _scale;
  final Animation<double> _movement;

  _CopyNotificationAnimation({
    required this.animation,
  })  : _opacity = TweenSequence<double>([
          TweenSequenceItem(
            tween: Tween<double>(begin: 0, end: 1)
                .chain(CurveTween(curve: Curves.easeIn)),
            weight: 10, // 0-20%
          ),
          TweenSequenceItem(
            tween: ConstantTween(1),
            weight: 70, // 21-80%
          ),
          TweenSequenceItem(
            tween: Tween<double>(begin: 1, end: 0)
                .chain(CurveTween(curve: Curves.easeOut)),
            weight: 20, // 81-100%
          ),
        ]).animate(animation),
        _scale = TweenSequence<double>([
          TweenSequenceItem(
            tween: Tween<double>(begin: 0.9, end: 1)
                .chain(CurveTween(curve: Curves.easeIn)),
            weight: 10, // 0-20%
          ),
          TweenSequenceItem(
            tween: ConstantTween(1),
            weight: 70, // 21-80%
          ),
          TweenSequenceItem(
            tween: Tween<double>(begin: 1, end: 0.9)
                .chain(CurveTween(curve: Curves.easeOut)),
            weight: 20, // 81-100%
          ),
        ]).animate(animation),
        _movement = Tween<double>(begin: 0, end: -10).animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0, 0.08, curve: Curves.easeIn),
        ));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: const _CopyNotification(),
      builder: (context, child) {
        assert(child != null);
        return Transform.translate(
          offset: Offset(0, _movement.value),
          child: Transform.scale(
            scale: _scale.value,
            child: Opacity(
              opacity: _opacity.value,
              child: child,
            ),
          ),
        );
      },
    );
  }
}

class _CopyNotification extends StatelessWidget {
  const _CopyNotification();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.grey.shade800,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Text(t.common.copied),
    );
  }
}
