import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blurhash_message.freezed.dart';

@freezed
@immutable
sealed class BlurhashMessage with _$BlurhashMessage {
  const factory BlurhashMessage.selectFile() = SelectFileMessage;

  const factory BlurhashMessage.setOrigin(ImageProvider origin) =
      SetOriginMessage;

  const factory BlurhashMessage.setBlurhash(String blurhash) =
      SetBlurhashMessage;
}
