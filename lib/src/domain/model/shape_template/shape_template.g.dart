// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShapeTemplateImpl _$$ShapeTemplateImplFromJson(Map<String, dynamic> json) =>
    _$ShapeTemplateImpl(
      vertices: (json['vertices'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
      maintainAspectRatio: json['maintainAspectRatio'] as bool,
      details: json['details'] == null
          ? null
          : ShapeTemplateDetails.fromJson(
              json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShapeTemplateImplToJson(_$ShapeTemplateImpl instance) =>
    <String, dynamic>{
      'vertices': instance.vertices.map((e) => e.toJson()).toList(),
      'maintainAspectRatio': instance.maintainAspectRatio,
      'details': instance.details?.toJson(),
    };
