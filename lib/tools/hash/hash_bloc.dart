import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pointycastle/export.dart';

import '../../common/either.dart';

class HashCubit extends Cubit<HashState> {
  HashCubit() : super(const HashState.init());

  void onInputTextChanged(String text) {
    final bytes = Uint8List.fromList(text.codeUnits);
    final hashes = _digestList
        .map((digest) => (digest.algorithmName, digest.process(bytes)))
        .toList(growable: false);
    emit(state.copyWith(
      input: Either.left(text),
      hashes: hashes,
    ));
  }

  void setFormat(HashFormat format) {
    emit(state.copyWith(hashFormat: format));
  }

  void onFileChanged(String path) {
    // TODO
    emit(state.copyWith(
      input: Either.right(path),
    ));
  }

  void dropFile() {
    emit(state.copyWith(
      input: const Left(''),
      hashes: const [],
    ));
  }
}

enum HashFormat {
  base64,
  hex,
}

final _digestList = <Digest>[
  MD2Digest(),
  MD4Digest(),
  MD5Digest(),
  RIPEMD128Digest(),
  SHA1Digest(),
  SHA224Digest(),
  SHA256Digest(),
  SHA384Digest(),
  SHA512Digest(),
  KeccakDigest(),
  TigerDigest(),
  WhirlpoolDigest(),
  SM3Digest(),
];

@immutable
class HashState {
  /// Either input text or path to the file
  final Either<String, String> input;

  final int bytesCount;

  final HashFormat hashFormat;

  /// List of calculated hashes. Records of Hash name to the Hash value.
  final List<(String, Uint8List?)> hashes;

  const HashState({
    required this.input,
    required this.bytesCount,
    required this.hashFormat,
    required this.hashes,
  });

  const HashState.init()
      : input = const Left(''),
        bytesCount = 0,
        hashFormat = HashFormat.hex,
        hashes = const [];

  HashState copyWith({
    Either<String, String>? input,
    int? bytesCount,
    HashFormat? hashFormat,
    List<(String, Uint8List?)>? hashes,
  }) {
    return HashState(
      input: input ?? this.input,
      bytesCount: bytesCount ?? this.bytesCount,
      hashFormat: hashFormat ?? this.hashFormat,
      hashes: hashes ?? this.hashes,
    );
  }
}
