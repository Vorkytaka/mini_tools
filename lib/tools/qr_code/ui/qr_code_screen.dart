import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import '../../../common/padding.dart';
import '../../../common/ui/input_text.dart';
import '../../../i18n/strings.g.dart';
import '../feature/qr_code_feature.dart';
import 'output/qr_code_output.dart';

part 'qr_code_extensions.dart';

part 'qr_code_input.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(title: Text(t.qrCode.title), centerTitle: true),
      children: [
        ContentArea(
          builder: (context, controller) {
            return const _Body();
          },
        ),
        ResizablePane(
          builder:
              (context, controller) => const Padding(
                padding: panePadding,
                child: QrCodeOutputSide(),
              ),
          minSize: 260,
          resizableSide: ResizableSide.left,
          startSize: 260,
          isResizable: false,
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: panePadding, child: _InputSide());
  }
}
