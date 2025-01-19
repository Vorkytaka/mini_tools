import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

import '../../common/padding.dart';

class UuidToolScreen extends StatelessWidget {
  const UuidToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('UUID Generator'),
      ),
      children: [
        ContentArea(
          builder: (context, _) => const _Content(),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: panePadding,
      child: const SizedBox(),
    );
  }
}
