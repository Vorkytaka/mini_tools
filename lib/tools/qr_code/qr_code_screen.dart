import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../common/padding.dart';
import 'feature/message/qr_code_message.dart';
import 'feature/qr_code_feature.dart';
import 'feature/state/qr_code_state.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text('QR Code'),
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
    return Padding(
      padding: panePadding,
      child: const Row(
        children: [
          Expanded(child: _InputSide()),
          SizedBox(width: 8),
          Expanded(child: _OutputSide()),
        ],
      ),
    );
  }
}

class _InputSide extends StatelessWidget {
  const _InputSide();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              Text('Input:'),
              const SizedBox(width: 8),
              PushButton(
                controlSize: ControlSize.regular,
                onPressed: () {
                  context
                      .read<QrCodeFeature>()
                      .accept(const QrCodeMessage.updateInput(''));
                },
                secondary: true,
                child: Text('Clear'),
              ),
              const Spacer(),
              _CorrectionLevelSelector(),
            ],
          ),
        ),
        SizedBox(height: 8),
        Expanded(child: _InputField()),
      ],
    );
  }
}

class _InputField extends StatefulWidget {
  const _InputField();

  @override
  State<_InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<_InputField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    final state = context.read<QrCodeFeature>().state;
    _controller.text = state.input;

    _controller.addListener(_onUpdate);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final state = context.watch<QrCodeFeature>().state;
    if (_controller.text != state.input) {
      _controller.text = state.input;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MacosTextField(
      controller: _controller,
      minLines: null,
      maxLines: null,
      textAlignVertical: const TextAlignVertical(y: -1),
    );
  }

  void _onUpdate() {
    final text = _controller.text;
    context.read<QrCodeFeature>().accept(QrCodeMessage.updateInput(text));
  }
}

class _OutputSide extends StatelessWidget {
  const _OutputSide();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<QrCodeFeature, QrCodeState>(
      buildWhen: (prev, curr) =>
          prev.code != curr.code ||
          prev.correctionLevel != curr.correctionLevel,
      builder: (context, state) {
        final code = state.code;
        if (code == null) {
          return const SizedBox();
        }

        return QrImageView.withQr(
          qr: code,
          errorCorrectionLevel: state.correctionLevel.toInt,
          backgroundColor: Colors.white,
          dataModuleStyle: QrDataModuleStyle(
            color: Colors.red,
            dataModuleShape: QrDataModuleShape.circle,
          ),
          eyeStyle: QrEyeStyle(
            color: Colors.blue,
            eyeShape: QrEyeShape.circle,
          ),
        );
      },
    );
  }
}

class _CorrectionLevelSelector extends StatelessWidget {
  const _CorrectionLevelSelector();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<QrCodeFeature, QrCodeState>(
      buildWhen: (prev, curr) => prev.correctionLevel != curr.correctionLevel,
      builder: (context, state) {
        return MacosPopupButton<ErrorCorrectionLevel>(
          value: state.correctionLevel,
          items: [
            for (final level in ErrorCorrectionLevel.values)
              MacosPopupMenuItem(
                value: level,
                child: Text(level.name),
              ),
          ],
          onChanged: (level) {
            if (level != null && level != state.correctionLevel) {
              context
                  .read<QrCodeFeature>()
                  .accept(QrCodeMessage.updateCorrectionLevel(level));
            }
          },
        );
      },
    );
  }
}
