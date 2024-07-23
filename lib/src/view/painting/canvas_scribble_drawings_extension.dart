import 'dart:ui';

import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/point_to_offset_x.dart';
import 'package:scribble/src/view/painting/sketch_line_path_extension.dart';
import 'package:scribble/src/view/painting/tool_paint_extension.dart';

// TODO: Consider using the inverted color of the tape color for the
// shadow color in order to make it more visible overlapping tapes.
final _shadowPaint = Paint()
  ..style = PaintingStyle.fill
  ..color = const Color.fromARGB(200, 145, 145, 145)
  ..strokeCap = StrokeCap.square;

const _shadowXOffsetMultiplier = 0.01;
const _shadowYOffsetMultiplier = 0.1;

/// An extension for drawinging Scribble specific [Sketch]s on a canvas.
///
/// Provides the method [drawSketchLine] and [drawPointerPreview].
extension CanvasScribbleDrawings on Canvas {
  /// Draws a [SketchLine] on the canvas.
  ///
  /// The [scaleFactor] is used to scale the line width.
  ///
  /// If [simulatePressure] is true, the line will be drawn as if it had
  /// pressure information, if all its points have the same pressure.
  void drawSketchLine(
    SketchLine line, {
    required double scaleFactor,
    required bool simulatePressure,
  }) {
    final paint = line.tool.getPaint(color: Color(line.color));
    final path = line.getPath(
      line,
      scaleFactor: scaleFactor,
      simulatePressure: simulatePressure,
    );
    if (path == null) {
      return;
    }
    if (line.tool == Tool.tape) {
      final shadowPath = path.shift(
        Offset(
          line.width * _shadowXOffsetMultiplier,
          line.width * _shadowYOffsetMultiplier,
        ),
      );
      drawPath(shadowPath, _shadowPaint);
    }
    drawPath(path, paint);
  }

  /// Draws a preview of the line on the canvas based on the current
  /// [ScribbleState].
  void drawPointerPreview(ScribbleState state) {
    final paint = state.map(
      drawing: (s) => s.selectedTool.getPaint(color: Color(s.selectedColor)),
      erasing: (s) => Paint()
        ..style = PaintingStyle.stroke
        ..color = const Color(0xFF000000)
        ..strokeWidth = 1,
    );

    if (state.selectedTool == Tool.tape) {
      drawCircle(
        state.pointerPosition!.asOffset.translate(
          state.selectedWidth * _shadowXOffsetMultiplier,
          state.selectedWidth * _shadowYOffsetMultiplier,
        ),
        state.selectedWidth / state.scaleFactor,
        _shadowPaint,
      );
    }

    drawCircle(
      state.pointerPosition!.asOffset,
      state.selectedWidth / state.scaleFactor,
      paint,
    );
  }
}
