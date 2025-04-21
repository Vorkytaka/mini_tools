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

  static void show(
    BuildContext context, {
    Color? backgroundColor,
    Color? foregroundColor,
  }) =>
      context.findAncestorStateOfType<_CopyOverlayState>()?._showNotification(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          );
}

class _CopyOverlayState extends State<CopyOverlay>
    with TickerProviderStateMixin {
  Offset? _cursorPosition;

  final _controllers = <AnimationController>[];

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
      // Do we need to remove entries? probably yeah
    }

    super.dispose();
  }

  void _showNotification({
    Color? foregroundColor,
    Color? backgroundColor,
  }) {
    final overlay = Overlay.maybeOf(context);

    if (overlay == null) {
      return;
    }

    final controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    // We need to cache position here, because `OverlayEntry.builder` will be called later
    // And it will take new position instead of old one
    final pos = _cursorPosition;
    final entry = OverlayEntry(
      builder: (context) => _CopyNotificationTheme(
        data: _CopyNotificationThemeData(backgroundColor: backgroundColor),
        child: _CopyNotificationPositioned(
          animation: controller,
          cursorPosition: pos,
        ),
      ),
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed && entry.mounted) {
        entry.remove();
        controller.dispose();
        _controllers.remove(controller);
      }
    });
    _controllers.add(controller);
    overlay.insert(entry);
    controller.forward(from: 0);
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
          curve: Curves.easeOutQuart,
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

class _CopyNotificationTheme extends InheritedWidget {
  final _CopyNotificationThemeData data;

  const _CopyNotificationTheme({
    required super.child,
    required this.data,
  });

  static _CopyNotificationThemeData? maybeOf(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<_CopyNotificationTheme>()
      ?.data;

  @override
  bool updateShouldNotify(_CopyNotificationTheme oldWidget) =>
      oldWidget.data != data;
}

@immutable
class _CopyNotificationThemeData {
  final Color? backgroundColor;
  final Color? foregroundColor;

  _CopyNotificationThemeData({
    this.backgroundColor,
    Color? foregroundColor,
  }) : foregroundColor = foregroundColor ??
            (backgroundColor != null
                ? ThemeData.estimateBrightnessForColor(backgroundColor) ==
                        Brightness.dark
                    ? Colors.white
                    : Colors.black
                : null);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _CopyNotificationThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor;

  @override
  int get hashCode => backgroundColor.hashCode;
}

class _CopyNotification extends StatelessWidget {
  const _CopyNotification();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final theme = _CopyNotificationTheme.maybeOf(context);
    final foregroundColor = theme?.foregroundColor ?? Colors.white;
    final backgroundColor = theme?.backgroundColor ?? Colors.grey.shade800;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: DefaultTextStyle.merge(
        style: TextStyle(color: foregroundColor),
        child: Text(t.common.copied),
      ),
    );
  }
}
