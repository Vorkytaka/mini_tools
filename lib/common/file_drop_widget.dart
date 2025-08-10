import 'package:cross_file/cross_file.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

import '../i18n/strings.g.dart';

class FileDropWidget extends StatefulWidget {
  final ValueChanged<XFile?>? onFileDropped;
  final Widget child;

  const FileDropWidget({required this.child, this.onFileDropped, super.key});

  @override
  State<FileDropWidget> createState() => _FileDropWidgetState();
}

class _FileDropWidgetState extends State<FileDropWidget> {
  bool _isDropping = false;

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      enable: widget.onFileDropped != null,
      onDragDone: (details) async {
        final file = details.files.firstOrNull;
        if (file != null) {
          widget.onFileDropped?.call(file);
        }
      },
      onDragEntered: (_) {
        setState(() {
          _isDropping = true;
        });
      },
      onDragExited: (_) {
        setState(() {
          _isDropping = false;
        });
      },
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [widget.child, if (_isDropping) const _DroppingHint()],
      ),
    );
  }
}

class _DroppingHint extends StatelessWidget {
  const _DroppingHint();

  @override
  Widget build(BuildContext context) {
    final s = Translations.of(context);
    final theme = MacosTheme.of(context);

    return ColoredBox(
      color: Colors.grey.shade800.withValues(alpha: 0.5),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: DecoratedBox(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MacosIcon(
                  CupertinoIcons.arrow_down_doc_fill,
                  size: 40,
                  color: DefaultTextStyle.of(context).style.color,
                ),
                const SizedBox(height: 12),
                Text(s.common.fileDropTitle, style: theme.typography.title1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
