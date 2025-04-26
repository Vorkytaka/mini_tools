// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToolsStateImpl _$$ToolsStateImplFromJson(Map<String, dynamic> json) =>
    _$ToolsStateImpl(
      selectedTool: $enumDecode(_$ToolsEnumMap, json['selectedTool']),
      tools: (json['tools'] as List<dynamic>)
          .map((e) => $enumDecode(_$ToolsEnumMap, e))
          .toList(),
      searchQuery: json['searchQuery'] as String,
      searchResult: (json['searchResult'] as List<dynamic>)
          .map((e) => $enumDecode(_$ToolsEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ToolsStateImplToJson(_$ToolsStateImpl instance) =>
    <String, dynamic>{
      'selectedTool': _$ToolsEnumMap[instance.selectedTool]!,
      'tools': instance.tools.map((e) => _$ToolsEnumMap[e]!).toList(),
      'searchQuery': instance.searchQuery,
      'searchResult':
          instance.searchResult.map((e) => _$ToolsEnumMap[e]!).toList(),
    };

const _$ToolsEnumMap = {
  Tools.datetime: 'datetime',
  Tools.jsonFormatter: 'jsonFormatter',
  Tools.regExp: 'regExp',
  Tools.numberBase: 'numberBase',
  Tools.percentage: 'percentage',
  Tools.colorConverter: 'colorConverter',
  Tools.materialColor: 'materialColor',
  Tools.hashCalculator: 'hashCalculator',
  Tools.sqlite: 'sqlite',
  Tools.uuid: 'uuid',
  Tools.cron: 'cron',
  Tools.textDiff: 'textDiff',
  Tools.qrCode: 'qrCode',
};
