import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../common/padding.dart';
import '../../i18n/strings.g.dart';
import 'feature/message/qr_code_message.dart';
import 'feature/qr_code_feature.dart';
import 'feature/state/qr_code_state.dart';

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

extension on ErrorCorrectionLevel {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ErrorCorrectionLevel.L => t.qrCode.correctionLevel.l,
      ErrorCorrectionLevel.M => t.qrCode.correctionLevel.m,
      ErrorCorrectionLevel.Q => t.qrCode.correctionLevel.q,
      ErrorCorrectionLevel.H => t.qrCode.correctionLevel.h,
    };
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

class _InputSide extends StatelessWidget {
  const _InputSide();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: headlinePadding,
          child: Row(
            children: [
              Text(t.common.input),
              const SizedBox(width: 8),
              const _ClearButton(),
              const Spacer(),
              FeatureBuilder<QrCodeFeature, QrCodeState>(
                buildWhen: (prev, curr) => prev.input != curr.input,
                builder: (context, state) {
                  final bytes = utf8.encode(state.input).length;
                  return Text(
                    t.common.bytesCount(
                      n: bytes,
                      bytes: bytes,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Expanded(child: _InputField()),
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
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _CorrectionLevelSelector(),
            FeatureBuilder<QrCodeFeature, QrCodeState>(
              buildWhen: (prev, curr) => prev.code != curr.code,
              builder: (context, state) {
                final qrCode = state.code;

                return PushButton(
                  controlSize: ControlSize.regular,
                  onPressed: qrCode != null
                      ? () {
                          context
                              .read<QrCodeFeature>()
                              .accept(const QrCodeMessage.saveToFile());
                        }
                      : null,
                  child: Text(t.common.save),
                );
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: FeatureBuilder<QrCodeFeature, QrCodeState>(
              buildWhen: (prev, curr) =>
                  prev.code != curr.code ||
                  prev.correctionLevel != curr.correctionLevel,
              builder: (context, state) {
                final code = state.code;

                final Widget qrCode;
                if (code == null) {
                  qrCode = const AspectRatio(
                    aspectRatio: 1,
                    child: ColoredBox(
                      color: Colors.white,
                      child: Placeholder(),
                    ),
                  );
                } else {
                  qrCode = QrImageView.withQr(
                    qr: code,
                    errorCorrectionLevel: state.correctionLevel.toInt,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  );
                }

                return ColoredBox(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: qrCode,
                  ),
                );
              },
            ),
          ),
        ),
        Text(t.qrCode.testBeforeUse),
      ],
    );
  }
}

class _CorrectionLevelSelector extends StatelessWidget {
  const _CorrectionLevelSelector();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      children: [
        Text(t.qrCode.correctionLevel.title),
        const SizedBox(width: 8),
        FeatureBuilder<QrCodeFeature, QrCodeState>(
          buildWhen: (prev, curr) =>
              prev.correctionLevel != curr.correctionLevel,
          builder: (context, state) {
            return MacosPopupButton<ErrorCorrectionLevel>(
              value: state.correctionLevel,
              items: [
                for (final level in ErrorCorrectionLevel.values)
                  MacosPopupMenuItem(
                    value: level,
                    child: Text(level.format(context)),
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
        ),
      ],
    );
  }
}

class _ClearButton extends StatelessWidget {
  const _ClearButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return PushButton(
      controlSize: ControlSize.regular,
      onPressed: () {
        context
            .read<QrCodeFeature>()
            .accept(const QrCodeMessage.updateInput(''));
      },
      secondary: true,
      child: Text(t.common.clear),
    );
  }
}
