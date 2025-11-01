import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_ui/macos_ui.dart';

import '../../../core/di_v0.dart';
import '../../../core/presentation/mini_sidebar.dart';
import '../../../core/tool_v2/src/tool_descriptor.dart';

final class NewTabWidget extends StatelessWidget {
  const NewTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MiniSidebarItem(
      leading: const MacosIcon(Icons.add),
      title: const Text('New Tab'),
      status: MiniSidebarItemStatus.idle,
      onPressed: () => showMacosSheet(
        context: context,
        barrierDismissible: true,
        builder: (context) => const Center(child: NewTabDialogWidget()),
      ),
    );
  }
}

final class NewTabDialogWidget extends StatefulWidget {
  const NewTabDialogWidget({super.key});

  @override
  State<NewTabDialogWidget> createState() => _NewTabDialogWidgetState();
}

class _NewTabDialogWidgetState extends State<NewTabDialogWidget> {
  final _searchController = TextEditingController();
  late final List<ToolDescriptor> _availableTools;
  List<ToolDescriptor> _filteredTools = [];

  @override
  void initState() {
    super.initState();

    _availableTools = context.read<MiniDepTree>().tabManager.availableTools;
    _filteredTools = _availableTools.sublist(0, 5);

    _searchController.addListener(() {
      final query = _searchController.text;
      if (query.isEmpty) {
        _filteredTools = _availableTools.sublist(0, 5);
      } else {
        _filteredTools = _availableTools
            .where(
              (tool) => tool.localizationData
                  .titleDelegate(context)
                  .toLowerCase()
                  .contains(query.toLowerCase()),
            )
            .toList();
      }

      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: MacosTheme.brightnessOf(context).resolve(
            CupertinoColors.systemGrey6.color,
            MacosColors.controlBackgroundColor.darkColor,
          ),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: MacosTheme.brightnessOf(context).resolve(
              Colors.black.withValues(alpha: 0.23),
              Colors.grey.withValues(alpha: 0.76),
            ),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: _SearchFieldWidget(
                controller: _searchController,
                onSubmitted: (_) {
                  if (_filteredTools.isNotEmpty) {
                    Navigator.of(
                      context,
                    ).pop(
                      context.read<MiniDepTree>().tabManager.createTab(
                        _filteredTools[0].id,
                      ),
                    );
                  }
                },
              ),
            ),
            for (int i = 0; i < min(_filteredTools.length, 5); i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: _SearchItemWidget(
                  id: _filteredTools[i].id,
                  icon: MacosIcon(_filteredTools[i].metadata.icon),
                  titleBuilder:
                      _filteredTools[i].localizationData.titleDelegate,
                ),
              ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}

final class _SearchItemWidget extends StatefulWidget {
  final String id;
  final Widget icon;
  final String Function(BuildContext context) titleBuilder;

  const _SearchItemWidget({
    required this.id,
    required this.icon,
    required this.titleBuilder,
  });

  @override
  State<_SearchItemWidget> createState() => _SearchItemWidgetState();
}

class _SearchItemWidgetState extends State<_SearchItemWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHover = true;
      }),
      onExit: (_) => setState(() {
        _isHover = false;
      }),
      child: GestureDetector(
        onTap: () {
          Navigator.of(
            context,
          ).pop(context.read<MiniDepTree>().tabManager.createTab(widget.id));
        },
        child: SizedBox(
          height: 40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: _isHover
                  ? Colors.grey.withValues(alpha: 0.1)
                  : Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 8),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Center(
                    child: widget.icon,
                  ),
                ),
                const SizedBox(width: 16),
                Text(widget.titleBuilder(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class _SearchFieldWidget extends StatelessWidget {
  final TextEditingController _controller;
  final ValueChanged<String> _onSubmitted;

  const _SearchFieldWidget({
    required TextEditingController controller,
    required ValueChanged<String> onSubmitted,
  }) : _controller = controller,
       _onSubmitted = onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: TextField(
        autofocus: true,
        controller: _controller,
        onSubmitted: _onSubmitted,
        decoration: const InputDecoration(
          icon: Icon(CupertinoIcons.search),
          border: InputBorder.none,
          hint: Text('Search tool'),
        ),
      ),
    );
  }
}
