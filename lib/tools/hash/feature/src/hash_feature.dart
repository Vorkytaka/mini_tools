// ignore_for_file: implicit_call_tearoffs

import 'package:pointycastle/export.dart';

import '../../../../common/mini_tea/feature/feature.dart';
import 'effect/hash_effect.dart';
import 'effect_handler/isolate_hash_effect_handler.dart';
import 'effect_handler/sync_hash_effect_handler.dart';
import 'event/hash_event.dart';
import 'state/hash_state.dart';

part 'hash_update.dart';

typedef HashFeature = Feature<HashState, HashEvent, HashEffect, void>;

HashFeature hashFeatureFactory() => Feature(
      initialState: HashState.init,
      update: const HashUpdate(),
      effectHandlers: [
        const SyncHashEffectHandler(),
        const IsolateHashEffectHandler(),
      ],
    );

extension HashAlgorithmUtils on HashAlgorithm {
  Digest get digest {
    return switch (this) {
      HashAlgorithm.md2 => MD2Digest(),
      HashAlgorithm.md4 => MD4Digest(),
      HashAlgorithm.md5 => MD5Digest(),
      HashAlgorithm.ripemd128 => RIPEMD128Digest(),
      HashAlgorithm.sha1 => SHA1Digest(),
      HashAlgorithm.sha224 => SHA224Digest(),
      HashAlgorithm.sha256 => SHA256Digest(),
      HashAlgorithm.sha384 => SHA384Digest(),
      HashAlgorithm.sha512 => SHA512Digest(),
      HashAlgorithm.keccak => KeccakDigest(),
      HashAlgorithm.tiger => TigerDigest(),
      HashAlgorithm.whirlpool => WhirlpoolDigest(),
      HashAlgorithm.sm3 => SM3Digest(),
    };
  }
}
