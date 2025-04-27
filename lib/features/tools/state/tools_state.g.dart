// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToolsStateImpl _$$ToolsStateImplFromJson(Map<String, dynamic> json) =>
    _$ToolsStateImpl(
      selectedToolId: json['selectedToolId'] as String,
      toolIds:
          (json['toolIds'] as List<dynamic>).map((e) => e as String).toList(),
      searchQuery: json['searchQuery'] as String,
      searchResult: (json['searchResult'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ToolsStateImplToJson(_$ToolsStateImpl instance) =>
    <String, dynamic>{
      'selectedToolId': instance.selectedToolId,
      'toolIds': instance.toolIds,
      'searchQuery': instance.searchQuery,
      'searchResult': instance.searchResult,
    };
