import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/utils/size_json.dart';

part 'polygon_template_details.freezed.dart';
part 'polygon_template_details.g.dart';

/// {@template polygon_template_details}
/// Represents the size and bounds of a polygon template.
/// {@endtemplate}
@freezed
class PolygonTemplateDetails with _$PolygonTemplateDetails {
  /// {@macro polygon_template_details}
  const factory PolygonTemplateDetails({
    /// The size of the polygon.
    @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) required Size size,

    /// The minimum x value of the polygon.
    required double minX,

    /// The minimum y value of the polygon.
    required double minY,
  }) = _PolygonTemplateDetails;

  /// Constructs a polygon template details from a JSON object.
  factory PolygonTemplateDetails.fromJson(Map<String, dynamic> json) =>
      _$PolygonTemplateDetailsFromJson(json);
}
