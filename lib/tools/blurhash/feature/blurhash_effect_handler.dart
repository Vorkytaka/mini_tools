import 'dart:async';
import 'dart:io';

import 'package:blurhash_ffi/blurhash.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_tea/feature.dart';

import 'effect/blurhash_effect.dart';
import 'message/blurhash_message.dart';

final class BlurhashEffectHandler
    implements EffectHandler<BlurhashEffect, BlurhashMessage> {
  const BlurhashEffectHandler();

  @override
  Future<void> call(
    BlurhashEffect effect,
    MsgEmitter<BlurhashMessage> emit,
  ) {
    return switch (effect) {
      SelectFileEffect() => _selectFile(effect, emit),
    };
  }

  Future<void> _selectFile(
    SelectFileEffect effect,
    MsgEmitter<BlurhashMessage> emit,
  ) async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.image,
    );

    final file = result?.xFiles.firstOrNull;
    if (file == null) {
      return;
    }

    final imageProvider = FileImage(File(file.path));

    emit(BlurhashMessage.setOrigin(imageProvider));

    final blurhash = await BlurhashFFI.encode(imageProvider);

    emit(BlurhashMessage.setBlurhash(blurhash));
  }
}
