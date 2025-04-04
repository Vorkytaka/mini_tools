import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:image/image.dart' as img;
import 'package:mini_tea/feature.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:super_clipboard/super_clipboard.dart';

import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';
import 'state/qr_code_state.dart';

final class QrCodeEffectHandler
    implements EffectHandler<QrCodeEffect, QrCodeMessage> {
  @override
  Future<void> call(
    QrCodeEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) {
    switch (effect) {
      case SaveToFileEffect():
        return _saveToFile(effect, emit);
      case CopyToClipboardEffect():
        return _copyToClipboard(effect, emit);
    }
  }

  Future<void> _saveToFile(
    SaveToFileEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    final path = await FilePicker.platform.saveFile(
      type: FileType.image,
      fileName: 'qr_code.${effect.exportType.extension}',
    );
    if (path == null) {
      return;
    }
    final file = File(path);

    switch (effect.exportType) {
      case ExportType.png:
        final content = await generateQrCodeRaster(
          effect.code,
          effect.visualData,
        ).then(encodePng);
        if (content != null) {
          await file.writeAsBytes(content);
        }
        break;
      case ExportType.jpg:
        final content = await generateQrCodeRaster(
          effect.code,
          effect.visualData,
        ).then(encodeJpg);
        if (content != null) {
          await file.writeAsBytes(content);
        }
        break;
      case ExportType.svg:
        final content = generateQrCodeSvg(effect.code);
        await file.writeAsString(content);
        break;
    }
  }

  /// Generate content for SVG version of this QR code
  static String generateQrCodeSvg(QrCode qrCode) {
    final qrImage = QrImage(qrCode);

    final StringBuffer svgContent = StringBuffer(
        '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" '
        'width="600" height="600" viewBox="0 0 ${qrImage.moduleCount} ${qrImage.moduleCount}">');

    for (int x = 0; x < qrImage.moduleCount; x++) {
      for (int y = 0; y < qrImage.moduleCount; y++) {
        if (qrImage.isDark(y, x)) {
          svgContent.write('<rect x="$x" y="$y" width="1" height="1" />');
        }
      }
    }

    svgContent.write('</svg>');

    return svgContent.toString();
  }

  /// Generate bytes content for vector graphic around this qr code
  static Future<img.Image?> generateQrCodeRaster(
    QrCode qrCode,
    QrCodeVisualData visualData,
  ) async {
    final painter = QrPainter.withQr(
      qr: qrCode,
      gapless: true,
      dataModuleStyle: visualData.toModuleStyle,
      eyeStyle: visualData.toEyeStyle,
    );
    final data = await painter.toImageData(600);

    if (data == null) {
      return null;
    }

    final qrImage = img.decodePng(data.buffer.asUint8List());

    if (qrImage == null) {
      return null;
    }

    img.Image image = img.Image(height: 600, width: 600);
    image = img.fill(
      image,
      color: visualData.backgroundColor.toImageColor,
    );
    image = img.compositeImage(image, qrImage);

    return image;
  }

  static Uint8List? encodePng(img.Image? image) =>
      image != null ? img.encodePng(image) : null;

  static Uint8List? encodeJpg(img.Image? image) =>
      image != null ? img.encodeJpg(image) : null;

  Future<void> _copyToClipboard(
    CopyToClipboardEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    final clipboard = SystemClipboard.instance;
    if (clipboard == null) {
      return;
    }

    final image = await generateQrCodeRaster(
      effect.code,
      effect.visualData,
    );
    final data = encodePng(image);
    if (data == null) {
      return;
    }

    final item = DataWriterItem();
    item.add(Formats.png(data));
    await clipboard.write([item]);
  }
}

extension on Color {
  img.Color get toImageColor => img.ColorUint8.rgb(red, green, blue);
}
