import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/domain/model/point/point.dart';
import 'package:scribble/src/domain/model/shape_template/shape_template_details.dart';

export './default_shape_templates.dart';
export 'shape_template_details.dart';

part 'shape_template.freezed.dart';
part 'shape_template.g.dart';

/// {@template shape_template}
/// Represents a shape template with a list of [Point]s representing the
/// vertices
/// {@endtemplate}
@freezed
class ShapeTemplate with _$ShapeTemplate {
  /// {@macro shape_template}
  const factory ShapeTemplate({
    /// The points representing the vertices of the shape.
    required List<Point> vertices,

    /// Whether the aspect ratio should be maintained when scaling the shape.
    required bool maintainAspectRatio,

    /// The details of the shape template.
    /// It contains the size and bounds of the shape.
    ///
    /// If a [ShapeTemplateDetails] is not provided, the size and bounds will be
    /// calculated based on the vertices every time the shape is drawn. To
    /// improve performance, it is recommended to provide the size and bounds
    /// manually.
    ShapeTemplateDetails? details,
  }) = _ShapeTemplate;

  /// Constructs a shape template from a JSON object.
  factory ShapeTemplate.fromJson(Map<String, dynamic> json) =>
      _$ShapeTemplateFromJson(json);
}
