import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/utils/size_json.dart';

part 'shape_template_details.freezed.dart';
part 'shape_template_details.g.dart';

/// {@template shape_template_details}
/// Represents the size and bounds of a shape template.
/// {@endtemplate}
@freezed
class ShapeTemplateDetails with _$ShapeTemplateDetails {
  /// {@macro shape_template_details}
  const factory ShapeTemplateDetails({
    /// The size of the shape.
    @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
    required Size size,

    /// The minimum x value of the shape.
    required double minX,

    /// The minimum y value of the shape.
    required double minY,
  }) = _ShapeTemplateDetails;

  /// Constructs a shape template details from a JSON object.
  factory ShapeTemplateDetails.fromJson(Map<String, dynamic> json) =>
      _$ShapeTemplateDetailsFromJson(json);
}
