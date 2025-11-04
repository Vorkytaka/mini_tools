import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:image/image.dart' as img;
import 'package:mini_tea/feature.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:super_clipboard/super_clipboard.dart';

import '../../../core/common/color.dart';
import '../../../core/logger/logger.dart';
import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';
import 'qr_exporter/qr_exporter.dart';
import 'qr_exporter/qr_exporter_2.dart';
import 'state/qr_code_state.dart';

const _tag = 'QrCodeEffectHandler';

final class QrCodeEffectHandler
    implements EffectHandler<QrCodeEffect, QrCodeMessage> {
  static QrCodeBytesExporter exporter = NewQrCodeExporter.generateBytes;

  const QrCodeEffectHandler();

  @override
  Future<void> call(QrCodeEffect effect, MsgEmitter<QrCodeMessage> emit) async {
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
    Log.d(_tag, 'Save QR to file (${effect.exportType.extension});');

    final path = await FilePicker.platform.saveFile(
      type: FileType.image,
      fileName: 'qr_code.${effect.exportType.extension}',
    );
    if (path == null) {
      Log.d(_tag, 'path is null; Stop saving to file;');
      return;
    }
    final file = File(path);

    switch (effect.exportType) {
      case ExportType.png:
        final content = await exporter(
          qrCode: effect.code,
          visualData: effect.visualData,
          exportSize: effect.exportSize,
        ).then(encodePng);
        if (content != null) {
          Log.v(_tag, 'Content is not null, write as bytes to file;');
          await file.writeAsBytes(content);
        }
        break;
      case ExportType.jpg:
        final content = await exporter(
          qrCode: effect.code,
          visualData: effect.visualData,
          exportSize: effect.exportSize,
        ).then(encodeJpg);
        if (content != null) {
          Log.v(_tag, 'Content is not null, write as bytes to file;');
          await file.writeAsBytes(content);
        }
        break;
    }
  }

  /// Generate content for SVG version of this QR code
  static String generateQrCodeSvg(
    QrCode qrCode,
    QrCodeVisualData visualData,
    int exportSize,
  ) {
    final qrImage = QrImage(qrCode);

    final backgroundColor = visualData.backgroundColor;
    final foregroundColor = visualData.foregroundColor;

    final StringBuffer svgContent = StringBuffer(
      '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" '
      'width="$exportSize" height="$exportSize" viewBox="0 0 ${qrImage.moduleCount} ${qrImage.moduleCount}">',
    );

    if (backgroundColor.a != 0) {
      // TODO(Vorkytaka): Add alpha channel
      svgContent.write(
        '<rect width="100%" height="100%" fill="${backgroundColor.toHexString}" />',
      );
    }

    // TODO(Vorkytaka): Add alpha channel
    final foregroundColorValue = foregroundColor.toHexString;
    for (int x = 0; x < qrImage.moduleCount; x++) {
      for (int y = 0; y < qrImage.moduleCount; y++) {
        if (qrImage.isDark(y, x)) {
          svgContent.write(
            '<rect x="$x" y="$y" width="1" height="1" fill="$foregroundColorValue" />',
          );
        }
      }
    }

    svgContent.write('</svg>');

    return svgContent.toString();
  }

  static Uint8List? encodePng(img.Image? image) =>
      image != null ? img.encodePng(image) : null;

  static Uint8List? encodeJpg(img.Image? image) =>
      image != null ? img.encodeJpg(image) : null;

  Future<void> _copyToClipboard(
    CopyToClipboardEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    Log.v(_tag, 'Copy QR code to clipboard;');
    final clipboard = SystemClipboard.instance;
    if (clipboard == null) {
      Log.d(_tag, 'Clipboard is not supported; Stop copying;');
      return;
    }

    final image = await exporter(
      qrCode: effect.code,
      visualData: effect.visualData,
      exportSize: effect.exportSize,
    );
    final data = encodePng(image);
    if (data == null) {
      Log.v(_tag, 'Data is null; Stop copying;');
      return;
    }

    final item = DataWriterItem();
    item.add(Formats.png(data));
    await clipboard.write([item]);
    Log.v(_tag, 'QR Code successfully copied;');
  }
}
