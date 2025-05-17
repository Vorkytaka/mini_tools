part of 'qr_code_screen.dart';

const _titleSize = 130.0;

class _OutputSide extends StatelessWidget {
  const _OutputSide();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        _CorrectionLevelSelector(),
        SizedBox(height: 8),
        _QrCodeShapeSelector(),
        SizedBox(height: 8),
        _ForegroundColorPicker(),
        SizedBox(height: 8),
        _BackgroundColorPicker(),
        SizedBox(height: 8),
        Center(child: _QrCodeWidget()),
        SizedBox(height: 8),
        _ExportQrLine(),
        SizedBox(height: 4),
        Center(child: _TestQrWarning()),
      ],
    );
  }
}

class _ForegroundColorPicker extends StatelessWidget {
  const _ForegroundColorPicker();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: _titleSize,
          child: Text(t.qrCode.foregroundColorTitle),
        ),
        FeatureBuilder<QrCodeFeature, QrCodeState>(
          buildWhen: (prev, curr) =>
              prev.visualData.foregroundColor !=
              curr.visualData.foregroundColor,
          builder: (context, state) {
            return SizedBox(
              height: 25,
              child: MiniColorPicker(
                onColorChanged: (color) {
                  if (color != state.visualData.foregroundColor) {
                    context
                        .read<QrCodeFeature>()
                        .accept(QrCodeMessage.foregroundColorUpdate(color));
                  }
                },
                selectedColor: state.visualData.foregroundColor,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _BackgroundColorPicker extends StatelessWidget {
  const _BackgroundColorPicker();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: _titleSize,
          child: Text(t.qrCode.backgroundColorTitle),
        ),
        FeatureBuilder<QrCodeFeature, QrCodeState>(
          buildWhen: (prev, curr) =>
              prev.visualData.backgroundColor !=
              curr.visualData.backgroundColor,
          builder: (context, state) {
            return SizedBox(
              height: 25,
              child: MiniColorPicker(
                onColorChanged: (color) {
                  if (color != state.visualData.backgroundColor) {
                    context
                        .read<QrCodeFeature>()
                        .accept(QrCodeMessage.backgroundColorUpdate(color));
                  }
                },
                selectedColor: state.visualData.backgroundColor,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _TestQrWarning extends StatelessWidget {
  const _TestQrWarning();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Text(t.qrCode.testBeforeUse);
  }
}

class _ExportQrLine extends StatelessWidget {
  const _ExportQrLine();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _ExportSizeWidget(),
        const SizedBox(height: 8),
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
      ],
    );
  }
}

class _ExportSizeWidget extends StatefulWidget {
  const _ExportSizeWidget();

  @override
  State<_ExportSizeWidget> createState() => _ExportSizeWidgetState();
}

class _ExportSizeWidgetState extends State<_ExportSizeWidget> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final feature = context.read<QrCodeFeature>();
    _textController.text = '${feature.state.exportSize}';

    _textController.addListener(() {
      final exportSizeStr = _textController.text;
      final exportSize = int.tryParse(exportSizeStr);

      if (exportSize == null) {
        return;
      }

      if (exportSize > QrCodeState.maxExportSize) {
        _textController.text = '${QrCodeState.maxExportSize}';
      } else {
        context
            .read<QrCodeFeature>()
            .accept(QrCodeMessage.exportSizeUpdate(exportSize));
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final theme = MacosTheme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(t.qrCode.exportSizeTitle),
        const SizedBox(width: 8),
        SizedBox(
          width: 100,
          child: MacosTextField(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: const TextInputType.numberWithOptions(),
            controller: _textController,
            suffix: Padding(
              padding: const EdgeInsetsDirectional.only(end: 4),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  fontSize: 12,
                  color: theme.timePickerTheme.dayPeriodTextColor,
                ),
                child: Text(t.qrCode.exportSizePx),
              ),
            ),
            suffixMode: OverlayVisibilityMode.always,
          ),
        ),
        const SizedBox(width: 8),
        HintButton(
          hint: t.qrCode.exportSizeHint(
            from: QrCodeState.minExportSize,
            to: QrCodeState.maxExportSize,
          ),
        )
      ],
    );
  }
}

class _QrCodeWidget extends StatelessWidget {
  const _QrCodeWidget();

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<QrCodeFeature, QrCodeState>(
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
          qrCode = PrettyQrView(
            decoration: PrettyQrDecoration(
              shape: state.visualData.qrCodeShape,
            ),
            qrImage: QrImage(code),
          );
        }

        return ColoredBox(
          color: state.visualData.backgroundColor,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 400),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: qrCode,
            ),
          ),
        );
      },
    );
  }
}

extension on QrCodeShape {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      QrCodeShape.square => t.qrCode.shapes.square,
      QrCodeShape.circle => t.qrCode.shapes.circle,
      QrCodeShape.smooth => t.qrCode.shapes.smooth,
    };
  }
}

class _QrCodeShapeSelector extends StatelessWidget {
  const _QrCodeShapeSelector();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: _titleSize,
          child: Text(t.qrCode.shapes.title),
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
          width: _titleSize,
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
