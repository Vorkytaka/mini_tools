import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../../common.dart';
import '../../feature/qr_code_feature.dart';
import 'qr_code_output_section.dart';

class QrCodeOutputSide extends StatelessWidget {
  const QrCodeOutputSide({
    super.key,
  });

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
