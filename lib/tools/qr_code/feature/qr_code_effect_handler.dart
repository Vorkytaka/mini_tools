import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:mini_tea/feature.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';

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
    }
  }

  Future<void> _saveToFile(
    QrCodeEffect effect,
    MsgEmitter<QrCodeMessage> emit,
  ) async {
    final path = await FilePicker.platform.saveFile(
      type: FileType.image,
      fileName: 'qr_code.png',
    );

    if (path == null) {
      return;
    }

    final painter = QrPainter.withQr(
      qr: effect.code,
      gapless: true,
    );
    final data = await painter.toImageData(600);
    final bytes = data!.buffer.asUint8List();
    final file = File(path);
    await file.writeAsBytes(bytes);
  }
}
