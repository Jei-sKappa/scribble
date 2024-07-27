// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_template_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShapeTemplateDetailsImpl _$$ShapeTemplateDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ShapeTemplateDetailsImpl(
      size: sizeFromJson(json['size'] as Map<String, dynamic>),
      minX: (json['minX'] as num).toDouble(),
      minY: (json['minY'] as num).toDouble(),
    );

Map<String, dynamic> _$$ShapeTemplateDetailsImplToJson(
        _$ShapeTemplateDetailsImpl instance) =>
    <String, dynamic>{
      'size': sizeToJson(instance.size),
      'minX': instance.minX,
      'minY': instance.minY,
    };
