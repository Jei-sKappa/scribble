// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch_drawing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeSketchDrawingImpl _$$FreeSketchDrawingImplFromJson(
        Map<String, dynamic> json) =>
    _$FreeSketchDrawingImpl(
      id: json['id'] as Object,
      points: (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: (json['color'] as num).toInt(),
      width: (json['width'] as num).toDouble(),
      tool: $enumDecodeNullable(_$ToolEnumMap, json['tool']) ?? Tool.pen,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FreeSketchDrawingImplToJson(
        _$FreeSketchDrawingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points.map((e) => e.toJson()).toList(),
      'color': instance.color,
      'width': instance.width,
      'tool': _$ToolEnumMap[instance.tool]!,
      'runtimeType': instance.$type,
    };

const _$ToolEnumMap = {
  Tool.pen: 'pen',
  Tool.highlighter: 'highlighter',
  Tool.tape: 'tape',
};

_$LineSketchDrawingImpl _$$LineSketchDrawingImplFromJson(
        Map<String, dynamic> json) =>
    _$LineSketchDrawingImpl(
      id: json['id'] as Object,
      anchorPoint: Point.fromJson(json['anchorPoint'] as Map<String, dynamic>),
      endPoint: Point.fromJson(json['endPoint'] as Map<String, dynamic>),
      color: (json['color'] as num).toInt(),
      width: (json['width'] as num).toDouble(),
      tool: $enumDecodeNullable(_$ToolEnumMap, json['tool']) ?? Tool.pen,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LineSketchDrawingImplToJson(
        _$LineSketchDrawingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anchorPoint': instance.anchorPoint.toJson(),
      'endPoint': instance.endPoint.toJson(),
      'color': instance.color,
      'width': instance.width,
      'tool': _$ToolEnumMap[instance.tool]!,
      'runtimeType': instance.$type,
    };

_$PolygonSketchDrawingImpl _$$PolygonSketchDrawingImplFromJson(
        Map<String, dynamic> json) =>
    _$PolygonSketchDrawingImpl(
      id: json['id'] as Object,
      anchorPoint: Point.fromJson(json['anchorPoint'] as Map<String, dynamic>),
      endPoint: Point.fromJson(json['endPoint'] as Map<String, dynamic>),
      polygonTemplate: PolygonTemplate.fromJson(
          json['polygonTemplate'] as Map<String, dynamic>),
      isFilled: json['isFilled'] as bool,
      color: (json['color'] as num).toInt(),
      width: (json['width'] as num).toDouble(),
      tool: $enumDecodeNullable(_$ToolEnumMap, json['tool']) ?? Tool.pen,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PolygonSketchDrawingImplToJson(
        _$PolygonSketchDrawingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anchorPoint': instance.anchorPoint.toJson(),
      'endPoint': instance.endPoint.toJson(),
      'polygonTemplate': instance.polygonTemplate.toJson(),
      'isFilled': instance.isFilled,
      'color': instance.color,
      'width': instance.width,
      'tool': _$ToolEnumMap[instance.tool]!,
      'runtimeType': instance.$type,
    };
