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

extension on ExportType {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ExportType.png => t.qrCode.exportType.png,
      ExportType.jpg => t.qrCode.exportType.jpg,
      ExportType.svg => t.qrCode.exportType.svg,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _CorrectionLevelSelector(),
        const SizedBox(height: 8),
        const _QrCodeShapeSelector(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: FeatureBuilder<QrCodeFeature, QrCodeState>(
              buildWhen: (prev, curr) =>
                  prev.code != curr.code ||
                  prev.correctionLevel != curr.correctionLevel ||
                  prev.visualData != curr.visualData,
              builder: (context, state) {
                final code = state.code;

                final Widget qrCode;
                if (code == null) {
                  qrCode = const AspectRatio(
                    aspectRatio: 1,
                    child: Placeholder(),
                  );
                } else {
                  qrCode = QrImageView.withQr(
                    qr: code,
                    errorCorrectionLevel: state.correctionLevel.toInt,
                    padding: state.visualData.paddings,
                    eyeStyle: state.visualData.toEyeStyle,
                    dataModuleStyle: state.visualData.toModuleStyle,
                  );
                }

                return ColoredBox(
                  color: state.visualData.backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: qrCode,
                  ),
                );
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                              .accept(const QrCodeMessage.copyToClipboard());
                        }
                      : null,
                  child: Text(t.common.copy),
                );
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                const _ExportTypeSelector(),
              ],
            ),
          ],
        ),
        const Spacer(),
        Text(t.qrCode.testBeforeUse),
      ],
    );
  }
}

extension on QrCodeShape {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      QrCodeShape.square => 'Square',
      QrCodeShape.circle => 'Circle',
    };
  }
}

class _QrCodeShapeSelector extends StatelessWidget {
  const _QrCodeShapeSelector();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 130,
          child: Text('QR Code shape'),
        ),
        FeatureBuilder<QrCodeFeature, QrCodeState>(
          buildWhen: (prev, curr) =>
              prev.visualData.shape != curr.visualData.shape,
          builder: (context, state) {
            return MacosPopupButton<QrCodeShape>(
              value: state.visualData.shape,
              items: [
                for (final shape in QrCodeShape.values)
                  MacosPopupMenuItem(
                    value: shape,
                    child: Text(shape.format(context)),
                  ),
              ],
              onChanged: (shape) {
                if (shape != null && shape != state.visualData.shape) {
                  context
                      .read<QrCodeFeature>()
                      .accept(QrCodeMessage.shapeUpdate(shape));
                }
              },
            );
          },
        ),
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
        SizedBox(
          width: 130,
          child: Text(t.qrCode.correctionLevel.title),
        ),
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

class _ExportTypeSelector extends StatelessWidget {
  const _ExportTypeSelector();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<QrCodeFeature, QrCodeState>(
      buildWhen: (prev, curr) => prev.exportType != curr.exportType,
      builder: (context, state) {
        return MacosPopupButton<ExportType>(
          value: state.exportType,
          items: [
            for (final type in ExportType.values)
              MacosPopupMenuItem(
                value: type,
                child: Text(type.format(context)),
              ),
          ],
          onChanged: (type) {
            if (type != null && type != state.exportType) {
              context
                  .read<QrCodeFeature>()
                  .accept(QrCodeMessage.updateExportType(type));
            }
          },
        );
      },
    );
  }
}
