import 'package:freezed_annotation/freezed_annotation.dart';

part 'tabs_effect.freezed.dart';

@freezed
@immutable
sealed class TabsEffect with _$TabsEffect {
  const factory TabsEffect.createTab({required String toolId}) =
      CreateTabEffect;
}
