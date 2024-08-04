import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/domain/model/point/point.dart';
import 'package:scribble/src/domain/model/polygon_template/polygon_template_details.dart';

export 'default_polygon_templates.dart';
export 'polygon_template_details.dart';

part 'polygon_template.freezed.dart';
part 'polygon_template.g.dart';

/// {@template polygon_template}
/// Represents a polygon template with a list of [Point]s representing the
/// vertices
/// {@endtemplate}
@freezed
class PolygonTemplate with _$PolygonTemplate {
  /// {@macro polygon_template}
  const factory PolygonTemplate({
    /// The points representing the vertices of the polygon.
    required List<Point> vertices,

    /// Whether the aspect ratio should be maintained when scaling the polygon.
    required bool maintainAspectRatio,

    /// The details of the polygon template.
    /// It contains the size and bounds of the polygon.
    ///
    /// If a [PolygonTemplateDetails] is not provided, the size and bounds will be
    /// calculated based on the vertices every time the polygon is drawn. To
    /// improve performance, it is recommended to provide the size and bounds
    /// manually.
    PolygonTemplateDetails? details,
  }) = _PolygonTemplate;

  /// Constructs a polygon template from a JSON object.
  factory PolygonTemplate.fromJson(Map<String, dynamic> json) =>
      _$PolygonTemplateFromJson(json);
}
