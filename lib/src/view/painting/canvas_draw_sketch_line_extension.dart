import 'dart:ui';

import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/sketch_line_path_extension.dart';
import 'package:scribble/src/view/painting/tools_paint_style.dart';

/// An extension for drawing a [SketchLine] on a [Canvas].
///
/// Provides the method [drawSketchLine] which draws a [SketchLine] on the
/// canvas.
extension CanvasDrawSketchLine on Canvas {
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
    final paint = line.paintForTool;
    final path = line.getPath(
      line,
      scaleFactor: scaleFactor,
      simulatePressure: simulatePressure,
    );
    if (path == null) {
      return;
    }
    if (line.tool == Tool.tape) {
      // TODO: Consider using the inverted color of the tape color for the
      // shadow color in order to make it more visible overlapping tapes.
      final paintInternal = Paint()
        ..style = PaintingStyle.fill
        ..color = const Color.fromARGB(200, 145, 145, 145)
        ..strokeCap = StrokeCap.square;
      final shadowPath = path.shift(
        Offset(line.width * 0.01, line.width * 0.1),
      );
      drawPath(shadowPath, paintInternal);
    }
    drawPath(path, paint);
  }
}
