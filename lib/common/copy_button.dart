import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:macos_ui/macos_ui.dart';

import '../i18n/strings.g.dart';

enum CopyButtonType {
  icon,
  text,
  both,
}

class CopyButton extends StatelessWidget {
  /// Value to copy on tap
  final String? value;

  final CopyButtonType type;

  const CopyButton({
    required this.type,
    this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void onTap() {
      final value = this.value;
      if (value != null && value.isNotEmpty) {
        Clipboard.setData(ClipboardData(text: value));
      }
    }

    switch (type) {
      case CopyButtonType.icon:
        return _IconCopyButton(onTap: onTap);
      case CopyButtonType.text:
        return _TextCopyButton(onTap: onTap);
      case CopyButtonType.both:
        return _BothCopyButton(onTap: onTap);
    }
  }
}

class _IconCopyButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _IconCopyButton({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MacosIconButton(
      onPressed: onTap,
      icon: const MacosIcon(CupertinoIcons.doc_on_clipboard_fill),
    );
  }
}

class _TextCopyButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _TextCopyButton({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return PushButton(
      controlSize: ControlSize.regular,
      onPressed: onTap,
      child: Text(t.common.copy),
    );
  }
}

class _BothCopyButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _BothCopyButton({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return PushButton(
      controlSize: ControlSize.regular,
      onPressed: onTap,
      secondary: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Builder(
            builder: (context) => MacosIcon(
              color: DefaultTextStyle.of(context).style.color,
              size: DefaultTextStyle.of(context).style.fontSize,
              CupertinoIcons.doc_on_clipboard_fill,
            ),
          ),
          const SizedBox(width: 4),
          Text(t.common.copy),
        ],
      ),
    );
  }
}
