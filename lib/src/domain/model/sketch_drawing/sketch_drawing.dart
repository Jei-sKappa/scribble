// ignore_for_file: always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/domain/model/sketch/sketch.dart';
import 'package:scribble/src/view/state/scribble.state.dart';

part 'sketch_drawing.freezed.dart';
part 'sketch_drawing.g.dart';

/// Represents the current draw mode of the [Drawing]'s [ScribbleState].
@freezed
sealed class SketchDrawing with _$SketchDrawing {
  /// The [SketchDrawing] when the user is drawing freely on the canvas.
  const factory SketchDrawing.free({
    /// The line that is currently being drawn
    required List<Point> points,

    /// The color of the line in hexadecimal format (ARGB)
    required int color,

    /// The width of the line
    required double width,

    /// The tool used to draw the line
    @Default(Tool.pen) Tool tool,
  }) = FreeSketchDrawing;

  /// The [SketchDrawing] when the user is drawing a straight line on the
  /// canvas.
  const factory SketchDrawing.line({
    /// The starting point of the line
    required Point anchorPoint,

    /// The end point of the line
    required Point endPoint,

    /// The color of the line in hexadecimal format (ARGB)
    required int color,

    /// The width of the line
    required double width,

    /// The tool used to draw the line
    @Default(Tool.pen) Tool tool,
  }) = LineSketchDrawing;

  /// The [SketchDrawing] when the user is drawing a shape on the canvas.
  const factory SketchDrawing.shape({
    /// The starting point of the shape
    required Point anchorPoint,

    /// The end point of the shape
    required Point endPoint,

    /// The shape template used to draw the shape
    required ShapeTemplate shapeTemplate,

    /// Whether the shape is filled or not
    required bool isFilled,

    /// The color of the line in hexadecimal format (ARGB)
    required int color,

    /// The width of the line
    required double width,

    /// The tool used to draw the line
    @Default(Tool.pen) Tool tool,
  }) = ShapeSketchDrawing;

  /// Constructs a [SketchDrawing] from a JSON object.
  factory SketchDrawing.fromJson(Map<String, dynamic> json) =>
      _$SketchDrawingFromJson(json);
  const SketchDrawing._();
}
