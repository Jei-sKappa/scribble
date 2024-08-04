// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_template_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PolygonTemplateDetailsImpl _$$PolygonTemplateDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PolygonTemplateDetailsImpl(
      size: sizeFromJson(json['size'] as Map<String, dynamic>),
      minX: (json['minX'] as num).toDouble(),
      minY: (json['minY'] as num).toDouble(),
    );

Map<String, dynamic> _$$PolygonTemplateDetailsImplToJson(
        _$PolygonTemplateDetailsImpl instance) =>
    <String, dynamic>{
      'size': sizeToJson(instance.size),
      'minX': instance.minX,
      'minY': instance.minY,
    };
