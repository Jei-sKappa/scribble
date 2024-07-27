import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/src/domain/model/sketch_drawing/sketch_drawing.dart';

export '../point/point.dart';
export '../shape_template/shape_template.dart';
export '../sketch_drawing/sketch_drawing.dart';
export '../tool/tool.dart';

part 'sketch.freezed.dart';
part 'sketch.g.dart';

/// Represents a sketch with a list of [SketchDrawing]s.
@freezed
class Sketch with _$Sketch {
  /// Represents a sketch with a list of [SketchDrawing]s.
  const factory Sketch({
    required List<SketchDrawing> drawings,
  }) = _Sketch;

  /// Constructs a sketch from a JSON object.
  factory Sketch.fromJson(Map<String, dynamic> json) => _$SketchFromJson(json);
}
