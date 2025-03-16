import 'package:freezed_annotation/freezed_annotation.dart';

part 'blurhash_effect.freezed.dart';

@freezed
@immutable
sealed class BlurhashEffect with _$BlurhashEffect {
  const factory BlurhashEffect.selectFile() = SelectFileEffect;
}
