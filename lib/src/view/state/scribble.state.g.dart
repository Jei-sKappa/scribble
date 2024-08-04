// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scribble.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DrawingImpl _$$DrawingImplFromJson(Map<String, dynamic> json) =>
    _$DrawingImpl(
      sketch: Sketch.fromJson(json['sketch'] as Map<String, dynamic>),
      drawMode: $enumDecodeNullable(_$DrawModeEnumMap, json['drawMode']) ??
          DrawMode.free,
      activeDrawing: json['activeDrawing'] == null
          ? null
          : SketchDrawing.fromJson(
              json['activeDrawing'] as Map<String, dynamic>),
      allowedPointersMode: $enumDecodeNullable(
              _$ScribblePointerModeEnumMap, json['allowedPointersMode']) ??
          ScribblePointerMode.all,
      activePointerIds: (json['activePointerIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      pointerPosition: json['pointerPosition'] == null
          ? null
          : Point.fromJson(json['pointerPosition'] as Map<String, dynamic>),
      selectedColor: (json['selectedColor'] as num?)?.toInt() ?? 0xFF000000,
      selectedWidth: (json['selectedWidth'] as num?)?.toDouble() ?? 5,
      scaleFactor: (json['scaleFactor'] as num?)?.toDouble() ?? 1,
      simplificationTolerance:
          (json['simplificationTolerance'] as num?)?.toDouble() ?? 0,
      selectedTool:
          $enumDecodeNullable(_$ToolEnumMap, json['selectedTool']) ?? Tool.pen,
      selectedPolygon: json['selectedPolygon'] == null
          ? null
          : PolygonTemplate.fromJson(
              json['selectedPolygon'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DrawingImplToJson(_$DrawingImpl instance) =>
    <String, dynamic>{
      'sketch': instance.sketch.toJson(),
      'drawMode': _$DrawModeEnumMap[instance.drawMode]!,
      'activeDrawing': instance.activeDrawing?.toJson(),
      'allowedPointersMode':
          _$ScribblePointerModeEnumMap[instance.allowedPointersMode]!,
      'activePointerIds': instance.activePointerIds,
      'pointerPosition': instance.pointerPosition?.toJson(),
      'selectedColor': instance.selectedColor,
      'selectedWidth': instance.selectedWidth,
      'scaleFactor': instance.scaleFactor,
      'simplificationTolerance': instance.simplificationTolerance,
      'selectedTool': _$ToolEnumMap[instance.selectedTool]!,
      'selectedPolygon': instance.selectedPolygon?.toJson(),
      'runtimeType': instance.$type,
    };

const _$DrawModeEnumMap = {
  DrawMode.free: 'free',
  DrawMode.line: 'line',
  DrawMode.polygon: 'polygon',
};

const _$ScribblePointerModeEnumMap = {
  ScribblePointerMode.all: 'all',
  ScribblePointerMode.mouseOnly: 'mouseOnly',
  ScribblePointerMode.penOnly: 'penOnly',
  ScribblePointerMode.mouseAndPen: 'mouseAndPen',
};

const _$ToolEnumMap = {
  Tool.pen: 'pen',
  Tool.highlighter: 'highlighter',
  Tool.tape: 'tape',
};

_$ErasingImpl _$$ErasingImplFromJson(Map<String, dynamic> json) =>
    _$ErasingImpl(
      sketch: Sketch.fromJson(json['sketch'] as Map<String, dynamic>),
      drawMode: $enumDecodeNullable(_$DrawModeEnumMap, json['drawMode']) ??
          DrawMode.free,
      allowedPointersMode: $enumDecodeNullable(
              _$ScribblePointerModeEnumMap, json['allowedPointersMode']) ??
          ScribblePointerMode.all,
      activePointerIds: (json['activePointerIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      pointerPosition: json['pointerPosition'] == null
          ? null
          : Point.fromJson(json['pointerPosition'] as Map<String, dynamic>),
      selectedWidth: (json['selectedWidth'] as num?)?.toDouble() ?? 5,
      scaleFactor: (json['scaleFactor'] as num?)?.toDouble() ?? 1,
      simplificationTolerance:
          (json['simplificationTolerance'] as num?)?.toDouble() ?? 0,
      selectedTool:
          $enumDecodeNullable(_$ToolEnumMap, json['selectedTool']) ?? Tool.pen,
      selectedPolygon: json['selectedPolygon'] == null
          ? null
          : PolygonTemplate.fromJson(
              json['selectedPolygon'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErasingImplToJson(_$ErasingImpl instance) =>
    <String, dynamic>{
      'sketch': instance.sketch.toJson(),
      'drawMode': _$DrawModeEnumMap[instance.drawMode]!,
      'allowedPointersMode':
          _$ScribblePointerModeEnumMap[instance.allowedPointersMode]!,
      'activePointerIds': instance.activePointerIds,
      'pointerPosition': instance.pointerPosition?.toJson(),
      'selectedWidth': instance.selectedWidth,
      'scaleFactor': instance.scaleFactor,
      'simplificationTolerance': instance.simplificationTolerance,
      'selectedTool': _$ToolEnumMap[instance.selectedTool]!,
      'selectedPolygon': instance.selectedPolygon?.toJson(),
      'runtimeType': instance.$type,
    };
