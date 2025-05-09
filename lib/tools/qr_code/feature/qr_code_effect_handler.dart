import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:image/image.dart' as img;
import 'package:mini_tea/feature.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_clipboard/super_clipboard.dart';

import '../../../common/color.dart';
import '../../../common/logger/logger.dart';
import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';
import 'state/qr_code_state.dart';

const _stateKey = 'qr_code/state';
const _tag = 'QrCodeEffectHandler';

final class QrCodeEffectHandler
    implements EffectHandler<QrCodeEffect, QrCodeMessage> {
  final EffectHandler<SaveStateEffect, QrCodeMessage> _onSaveState;

  const QrCodeEffectHandler({
    required EffectHandler<SaveStateEffect, QrCodeMessage> onSaveState,
  }) : _onSaveState = onSaveState;

  @override
  Future<void> call(
    QrCodeEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    switch (effect) {
      case SaveToFileEffect():
        return _saveToFile(effect, emit);
      case CopyToClipboardEffect():
        return _copyToClipboard(effect, emit);
      case SaveStateEffect():
        return _onSaveState(effect, emit);
      case LoadStateEffect():
        return _loadState(effect, emit);
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

  Future<void> _loadState(
    LoadStateEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final jsonStr = sharedPreferences.getString(_stateKey);
      if (jsonStr != null) {
        final json = jsonDecode(jsonStr);
        final state = QrCodeState.fromJson(json);
        emit(QrCodeMessage.loadedState(state));
        Log.v(_tag, 'Successfully load the state;');
      }
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not load the state;', e, st);
      Log.d(_tag, 'Try to clean the value;');
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.remove(_stateKey);
    }
  }
}

final class SaveStateEffectHandler
    implements EffectHandler<SaveStateEffect, QrCodeMessage> {
  const SaveStateEffectHandler();

  @override
  Future<void> call(
    SaveStateEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = jsonEncode(effect.state.toJson());
      await sharedPreferences.setString(_stateKey, json);
      Log.v(_tag, 'Successfully save the state;');
    } on Object catch (e, st) {
      Log.e(_tag, 'Could not save the state;', e, st);
    }
  }
}
