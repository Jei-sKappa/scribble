// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch_drawing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeSketchDrawingImpl _$$FreeSketchDrawingImplFromJson(
        Map<String, dynamic> json) =>
    _$FreeSketchDrawingImpl(
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
      'anchorPoint': instance.anchorPoint.toJson(),
      'endPoint': instance.endPoint.toJson(),
      'color': instance.color,
      'width': instance.width,
      'tool': _$ToolEnumMap[instance.tool]!,
      'runtimeType': instance.$type,
    };

_$ShapeSketchDrawingImpl _$$ShapeSketchDrawingImplFromJson(
        Map<String, dynamic> json) =>
    _$ShapeSketchDrawingImpl(
      anchorPoint: Point.fromJson(json['anchorPoint'] as Map<String, dynamic>),
      endPoint: Point.fromJson(json['endPoint'] as Map<String, dynamic>),
      shapeTemplate:
          ShapeTemplate.fromJson(json['shapeTemplate'] as Map<String, dynamic>),
      isFilled: json['isFilled'] as bool,
      color: (json['color'] as num).toInt(),
      width: (json['width'] as num).toDouble(),
      tool: $enumDecodeNullable(_$ToolEnumMap, json['tool']) ?? Tool.pen,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShapeSketchDrawingImplToJson(
        _$ShapeSketchDrawingImpl instance) =>
    <String, dynamic>{
      'anchorPoint': instance.anchorPoint.toJson(),
      'endPoint': instance.endPoint.toJson(),
      'shapeTemplate': instance.shapeTemplate.toJson(),
      'isFilled': instance.isFilled,
      'color': instance.color,
      'width': instance.width,
      'tool': _$ToolEnumMap[instance.tool]!,
      'runtimeType': instance.$type,
    };
