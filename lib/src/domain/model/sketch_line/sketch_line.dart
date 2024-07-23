import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/domain/model/point/point.dart';
import 'package:scribble/src/domain/model/tool/tool.dart';

part 'sketch_line.freezed.dart';
part 'sketch_line.g.dart';

/// {@template sketch_line}
/// Represents a line in a sketch.
/// {@endtemplate}
@freezed
class SketchLine with _$SketchLine {
  /// {@macro sketch_line}
  const factory SketchLine({
    /// The points that make up the line
    required List<Point> points,

    /// The color of the line in hexadecimal format (ARGB)
    required int color,

    /// The width of the line
    required double width,

    /// The tool used to draw the line
    @Default(Tool.pen) Tool tool,
  }) = _SketchLine;

  /// Constructs a sketch line from a JSON object.
  factory SketchLine.fromJson(Map<String, dynamic> json) =>
      _$SketchLineFromJson(json);
}
