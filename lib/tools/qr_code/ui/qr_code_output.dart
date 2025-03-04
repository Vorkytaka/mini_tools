part of 'qr_code_screen.dart';

class _OutputSide extends StatelessWidget {
  const _OutputSide();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _CorrectionLevelSelector(),
        SizedBox(height: 8),
        _QrCodeShapeSelector(),
        SizedBox(height: 8),
        Center(child: _QrCodeWidget()),
        SizedBox(height: 8),
        _ExportQrLine(),
        Spacer(),
        Center(child: _SvgWarning()),
        SizedBox(height: 4),
        Center(child: _TestQrWarning()),
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

    return Row(
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
    );
  }
}

class _SvgWarning extends StatelessWidget {
  const _SvgWarning();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<QrCodeFeature, QrCodeState>(
      buildWhen: (prev, curr) =>
          prev.exportType != curr.exportType ||
          prev.visualData != curr.visualData,
      builder: (context, state) {
        if (state.exportType == ExportType.svg &&
            state.visualData.shape != QrCodeShape.square) {
          return DefaultTextStyle.merge(
            style: TextStyle(
              color: Colors.red.shade300,
            ),
            child: Text(t.qrCode.shapes.svgWarning),
          );
        }

        return const SizedBox();
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
          width: 130,
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
