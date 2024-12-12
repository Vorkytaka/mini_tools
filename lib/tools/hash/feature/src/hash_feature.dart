// ignore_for_file: implicit_call_tearoffs

import 'package:mini_tea/feature.dart';
import 'package:pointycastle/export.dart';

import '../hash_feature.dart';

part 'hash_update.dart';

typedef HashFeature = Feature<HashState, HashEvent, HashEffect>;

HashFeature hashFeatureFactory() => HashFeature(
      initialState: HashState.init,
      update: const HashUpdate(),
    )
        .wrap<IsolateHashEffect>(const IsolateHashEffectHandler())
        .wrap<SyncHashEffect>(const SyncHashEffectHandler());

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
