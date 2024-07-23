// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SketchLineImpl _$$SketchLineImplFromJson(Map<String, dynamic> json) =>
    _$SketchLineImpl(
      points: (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: (json['color'] as num).toInt(),
      width: (json['width'] as num).toDouble(),
      tool: $enumDecodeNullable(_$ToolEnumMap, json['tool']) ?? Tool.pen,
    );

Map<String, dynamic> _$$SketchLineImplToJson(_$SketchLineImpl instance) =>
    <String, dynamic>{
      'points': instance.points.map((e) => e.toJson()).toList(),
      'color': instance.color,
      'width': instance.width,
      'tool': _$ToolEnumMap[instance.tool]!,
    };

const _$ToolEnumMap = {
  Tool.pen: 'pen',
  Tool.highlighter: 'highlighter',
  Tool.tape: 'tape',
};
