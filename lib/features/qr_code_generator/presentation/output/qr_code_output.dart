import 'package:flutter/material.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../../../../i18n/strings.g.dart';
import '../../common.dart';
import '../../domain/qr_code_feature.dart';
import 'qr_code_output_section.dart';

class QrCodeOutputSide extends StatelessWidget {
  const QrCodeOutputSide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(child: _QrCodeWidget()),
        SizedBox(height: 12),
        Expanded(child: QrCodeOutputSectionWidget()),
      ],
    );
  }
}

class _QrCodeWidget extends StatelessWidget {
  const _QrCodeWidget();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FeatureBuilder<QrCodeFeature, QrCodeState>(
      buildWhen:
          (prev, curr) =>
              prev.code != curr.code ||
              prev.correctionLevel != curr.correctionLevel ||
              prev.visualData != curr.visualData,
      builder: (context, state) {
        final code = state.code;

        Widget qrCode;
        if (code == null) {
          qrCode = AspectRatio(
            aspectRatio: 1,
            child: Placeholder(color: state.visualData.foregroundColor),
          );
        } else {
          try {
            qrCode = PrettyQrView(
              decoration: PrettyQrDecoration(
                shape: state.visualData.qrCodeShape,
              ),
              qrImage: QrImage(code),
            );
          } on InputTooLongException catch (e) {
            // TODO(#257): Hacky. Find a better way to handle this error.

            // We divide by 8 to convert bits to bytes,
            // and subtract 3 for the error correction overhead.
            final maxBytes = e.inputLimit ~/ 8 - 3;
            final errorColor =
                ThemeData.estimateBrightnessForColor(
                          state.visualData.backgroundColor,
                        ) ==
                        Brightness.dark
                    ? Colors.white
                    : Colors.black;
            qrCode = AspectRatio(
              aspectRatio: 1,
              child: Placeholder(
                child: Center(
                  child: ColoredBox(
                    color: state.visualData.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        t.qrCode.errorTooManyBytes(max: maxBytes),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: errorColor),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }

        return ColoredBox(
          color: state.visualData.backgroundColor,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 400),
            child: Padding(padding: const EdgeInsets.all(8), child: qrCode),
          ),
        );
      },
    );
  }
}
