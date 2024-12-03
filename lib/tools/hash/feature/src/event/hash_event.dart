import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/hash_state.dart';

part 'hash_event.freezed.dart';

@immutable
@freezed
sealed class HashEvent with _$HashEvent {
  const factory HashEvent.updateText(String text) = UpdateTextEvent;

  const factory HashEvent.setFile(String path) = SetFileEvent;

  const factory HashEvent.dropFile() = DropFileEvent;

  const factory HashEvent.updateFormat(HashFormat format) = UpdateFormatEvent;

  const factory HashEvent.updateHash(Uint8List? hash, {int? bytesInFile}) =
      UpdateHashEvent;

  const factory HashEvent.updateAlgorithm(HashAlgorithm algorithm) =
      UpdateAlgorithmEvent;
}
