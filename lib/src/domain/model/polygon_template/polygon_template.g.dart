// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PolygonTemplateImpl _$$PolygonTemplateImplFromJson(
        Map<String, dynamic> json) =>
    _$PolygonTemplateImpl(
      vertices: (json['vertices'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
      maintainAspectRatio: json['maintainAspectRatio'] as bool,
      details: json['details'] == null
          ? null
          : PolygonTemplateDetails.fromJson(
              json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PolygonTemplateImplToJson(
        _$PolygonTemplateImpl instance) =>
    <String, dynamic>{
      'vertices': instance.vertices.map((e) => e.toJson()).toList(),
      'maintainAspectRatio': instance.maintainAspectRatio,
      'details': instance.details?.toJson(),
    };
