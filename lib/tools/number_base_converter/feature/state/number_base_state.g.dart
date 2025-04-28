// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_base_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NumberBaseStateImpl _$$NumberBaseStateImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberBaseStateImpl(
      base2: json['base2'] as String,
      base8: json['base8'] as String,
      base10: json['base10'] as String,
      base16: json['base16'] as String,
      customBase: (json['customBase'] as num).toInt(),
      customBaseValue: json['customBaseValue'] as String,
      value:
          json['value'] == null ? null : BigInt.parse(json['value'] as String),
    );

Map<String, dynamic> _$$NumberBaseStateImplToJson(
        _$NumberBaseStateImpl instance) =>
    <String, dynamic>{
      'base2': instance.base2,
      'base8': instance.base8,
      'base10': instance.base10,
      'base16': instance.base16,
      'customBase': instance.customBase,
      'customBaseValue': instance.customBaseValue,
      'value': instance.value?.toString(),
    };
