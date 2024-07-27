import 'dart:math';
import 'dart:ui';

import 'package:scribble/src/domain/model/sketch_drawing/sketch_drawing.dart';

extension LineSketchDrawPolygon on LineSketchDrawing {
  (Offset p1, Offset p2, Offset p3, Offset p4) getRectangle({
    required double scaleFactor,
  }) {
    final line = this;

    // TODO: width * 2 * scaleFactor should be a shared function
    final scaledLineWidth = line.width * 2 * scaleFactor;
    final halfWidth = scaledLineWidth / 2;

    // Calculate the direction of the line
    final dx = line.endPoint.x - line.anchorPoint.x;
    final dy = line.endPoint.y - line.anchorPoint.y;
    final length = sqrt(dx * dx + dy * dy);

    // Calculate perpendicular offsets
    final offsetX = -dy * halfWidth / length;
    final offsetY = dx * halfWidth / length;

    // Calculate the four points of the filled shape
    final p1 = Offset(
      line.anchorPoint.x + offsetX,
      line.anchorPoint.y + offsetY,
    );
    final p2 = Offset(
      line.anchorPoint.x - offsetX,
      line.anchorPoint.y - offsetY,
    );
    final p3 = Offset(
      line.endPoint.x - offsetX,
      line.endPoint.y - offsetY,
    );
    final p4 = Offset(
      line.endPoint.x + offsetX,
      line.endPoint.y + offsetY,
    );

    return (p1, p2, p3, p4);
  }
}
