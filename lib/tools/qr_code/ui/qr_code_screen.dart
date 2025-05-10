import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:provider/provider.dart';

import '../../../common/padding.dart';
import '../../../common/ui/input_text.dart';
import '../../../common/ui/mini_color_picker.dart';
import '../../../i18n/strings.g.dart';
import '../common.dart';
import '../feature/message/qr_code_message.dart';
import '../feature/qr_code_feature.dart';
import '../feature/state/qr_code_state.dart';

part 'qr_code_extensions.dart';

part 'qr_code_input.dart';

part 'qr_code_output.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(t.qrCode.title),
        centerTitle: true,
      ),
      children: [
        ContentArea(
          builder: (context, controller) {
            return const _Body();
          },
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: panePadding,
      child: Row(
        children: [
          Expanded(child: _InputSide()),
          SizedBox(width: 8),
          Expanded(child: _OutputSide()),
        ],
      ),
    );
  }
}
