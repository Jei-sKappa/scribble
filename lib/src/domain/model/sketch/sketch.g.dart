// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SketchImpl _$$SketchImplFromJson(Map<String, dynamic> json) => _$SketchImpl(
      drawings: (json['drawings'] as List<dynamic>)
          .map((e) => SketchDrawing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SketchImplToJson(_$SketchImpl instance) =>
    <String, dynamic>{
      'drawings': instance.drawings.map((e) => e.toJson()).toList(),
    };
