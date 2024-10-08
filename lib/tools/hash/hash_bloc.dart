import 'dart:io';

import 'package:async/async.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointycastle/export.dart';

import '../../common/either.dart';

class HashCubit extends Cubit<HashState> {
  static final _digestList = <Digest>[
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

  HashCubit() : super(const HashState.init());

  void init() {
    final hashes = _digestList
        .map((digest) => (
              digest.algorithmName,
              Uint8List(0),
            ))
        .toList(growable: false);
    emit(state.copyWith(hashes: hashes));
  }

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

  Future<void> onFileChanged(String path) async {
    emit(state.copyWith(input: Either.right(path)));

    final hashes = await compute(_do, path);

    emit(state.copyWith(hashes: hashes));
  }

  static Future<List<(String, Uint8List)>> _do(String path) async {
    for (final digest in _digestList) {
      digest.reset();
    }

    final file = File(path);
    final reader = ChunkedStreamReader(file.openRead());

    try {
      List<int> chunk = await reader.readChunk(1024 * 1024 * 10);
      while (chunk.isNotEmpty) {
        final bytes = Uint8List.fromList(chunk);

        for (final digest in _digestList) {
          digest.update(bytes, 0, bytes.length);
        }

        chunk = await reader.readChunk(4096);
      }
    } finally {
      await reader.cancel();
    }

    return _digestList.map((digest) {
      final hash = Uint8List(digest.digestSize);
      digest.doFinal(hash, 0);
      return (digest.algorithmName, hash);
    }).toList(growable: false);
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
