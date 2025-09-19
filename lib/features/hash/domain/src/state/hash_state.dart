import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hash_state.freezed.dart';

enum HashFormat { base64, hex }

enum HashAlgorithm {
  md2,
  md4,
  md5,
  ripemd128,
  sha1,
  sha224,
  sha256,
  sha384,
  sha512,
  keccak,
  tiger,
  whirlpool,
  sm3,
}

@immutable
@freezed
class HashState with _$HashState {
  static const init = HashState(
    input: HashInput.text(text: ''),
    format: HashFormat.base64,
    algorithm: HashAlgorithm.md5,
    hash: null,
  );

  const factory HashState({
    required HashInput input,
    required HashFormat format,
    required HashAlgorithm algorithm,
    required Uint8List? hash,
    @Default(0) int inputBytes,
  }) = _HashState;
}

@immutable
@freezed
sealed class HashInput with _$HashInput {
  const factory HashInput.text({required String text}) = TextInput;

  const factory HashInput.file({required String path}) = FileInput;
}
