// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QrCodeStateImpl _$$QrCodeStateImplFromJson(Map<String, dynamic> json) =>
    _$QrCodeStateImpl(
      input: json['input'] as String,
      correctionLevel:
          $enumDecode(_$ErrorCorrectionLevelEnumMap, json['correctionLevel']),
      exportType: $enumDecode(_$ExportTypeEnumMap, json['exportType']),
      visualData:
          QrCodeVisualData.fromJson(json['visualData'] as Map<String, dynamic>),
      exportSize: (json['exportSize'] as num?)?.toInt() ?? 1024,
    );

Map<String, dynamic> _$$QrCodeStateImplToJson(_$QrCodeStateImpl instance) =>
    <String, dynamic>{
      'input': instance.input,
      'correctionLevel':
          _$ErrorCorrectionLevelEnumMap[instance.correctionLevel]!,
      'exportType': _$ExportTypeEnumMap[instance.exportType]!,
      'visualData': instance.visualData,
      'exportSize': instance.exportSize,
    };

const _$ErrorCorrectionLevelEnumMap = {
  ErrorCorrectionLevel.L: 'L',
  ErrorCorrectionLevel.M: 'M',
  ErrorCorrectionLevel.Q: 'Q',
  ErrorCorrectionLevel.H: 'H',
};

const _$ExportTypeEnumMap = {
  ExportType.png: 'png',
  ExportType.jpg: 'jpg',
};

_$QrCodeVisualDataImpl _$$QrCodeVisualDataImplFromJson(
        Map<String, dynamic> json) =>
    _$QrCodeVisualDataImpl(
      backgroundColor: const ColorConverter()
          .fromJson((json['backgroundColor'] as num).toInt()),
      foregroundColor: const ColorConverter()
          .fromJson((json['foregroundColor'] as num).toInt()),
      shape: $enumDecode(_$QrCodeShapeEnumMap, json['shape']),
      paddings: const EdgeInsetsConverter()
          .fromJson(json['paddings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QrCodeVisualDataImplToJson(
        _$QrCodeVisualDataImpl instance) =>
    <String, dynamic>{
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'foregroundColor':
          const ColorConverter().toJson(instance.foregroundColor),
      'shape': _$QrCodeShapeEnumMap[instance.shape]!,
      'paddings': const EdgeInsetsConverter().toJson(instance.paddings),
    };

const _$QrCodeShapeEnumMap = {
  QrCodeShape.smooth: 'smooth',
  QrCodeShape.square: 'square',
  QrCodeShape.circle: 'circle',
};
