import 'dart:ui';

import 'package:perfect_freehand/perfect_freehand.dart' as pf;
import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/line_sketch_draw_polygon_extension.dart';
import 'package:scribble/src/view/painting/point_to_offset_x.dart';
import 'package:scribble/src/view/painting/shape_sketch_draw_polygon_extension.dart';
import 'package:scribble/src/view/painting/tool_paint_extension.dart';
import 'package:touchable/touchable.dart';

// TODO(Jei-sKappa): Consider using the inverted color of the tape color for the
// shadow color in order to make it more visible overlapping tapes.
final _shadowPaint = Paint()
  ..style = PaintingStyle.fill
  ..color = const Color.fromARGB(200, 145, 145, 145)
  ..strokeCap = StrokeCap.square;

const _shadowXOffsetMultiplier = 0.045;
const _shadowYOffsetMultiplier = 0.25;

// TODO(Jei-sKappa): Insted of using a nullable Tool to simulate the eraser create a new parameter
/// {@template scribble.canvas.draw_point}
/// Draws a preview of the line on the canvas based on the current
/// [ScribbleState].
/// {@endtemplate}
void _drawPoint({
  required Object canvas,
  required double width,
  required double scaleFactor,
  required int color,
  required Point pointerPosition,
  required Tool? tool,
  required GestureCallbacks? gestureCallbacks,
}) {
  final scaledLineWidth = width * scaleFactor;

  if (tool == Tool.tape) {
    TouchyCanvasHelper.drawCircle(
      canvas,
      pointerPosition.asOffset.translate(
        scaledLineWidth * _shadowXOffsetMultiplier,
        scaledLineWidth * _shadowYOffsetMultiplier,
      ),
      scaledLineWidth,
      _shadowPaint,
      gestureCallbacks: gestureCallbacks,
    );
  }

  final paint = tool?.getPaint(color: Color(color)) ??
      (Paint()
        ..style = PaintingStyle.stroke
        ..color = Color(color)
        ..strokeWidth = 1);

  TouchyCanvasHelper.drawCircle(
    canvas,
    pointerPosition.asOffset,
    scaledLineWidth,
    paint,
    gestureCallbacks: gestureCallbacks,
  );
}

/// {@template scribble.canvas.draw_sketch_drawing}
/// Draws a [SketchDrawing] on the canvas.
///
/// It maps the different types of [SketchDrawing]s to the corresponding
/// drawing methods.
/// {@endtemplate}
void _drawSketchDrawing(
  SketchDrawing drawing, {
  required Object canvas,
  required double scaleFactor,
  required bool simulatePressure,
  required GestureCallbacks? gestureCallbacks,
}) {
  switch (drawing) {
    case final FreeSketchDrawing freeDrawing:
      _drawFreeDrawing(
        freeDrawing,
        canvas: canvas,
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
        gestureCallbacks: gestureCallbacks,
      );
    case final LineSketchDrawing line:
      _drawStraightLine(
        line,
        canvas: canvas,
        scaleFactor: scaleFactor,
        gestureCallbacks: gestureCallbacks,
      );
    case final ShapeSketchDrawing shape:
      _drawShape(
        shape,
        canvas: canvas,
        scaleFactor: scaleFactor,
        gestureCallbacks: gestureCallbacks,
      );
  }
}

/// {@template scribble.canvas.draw_free_drawing}
/// Draws a [FreeSketchDrawing] on the canvas.
///
/// The [scaleFactor] is used to scale the line width.
///
/// If [simulatePressure] is true, the line will be drawn as if it had
/// pressure information, if all its points have the same pressure.
/// {@endtemplate}
void _drawFreeDrawing(
  FreeSketchDrawing freeDrawing, {
  required Object canvas,
  required double scaleFactor,
  required bool simulatePressure,
  required GestureCallbacks? gestureCallbacks,
}) {
  final path = _getPathFromPoints(
    freeDrawing.points,
    width: freeDrawing.width,
    scaleFactor: scaleFactor,
    simulatePressure: simulatePressure,
  );

  if (path == null) {
    return;
  }

  if (freeDrawing.tool == Tool.tape) {
    final shadowPath = path.shift(
      Offset(
        freeDrawing.width * _shadowXOffsetMultiplier,
        freeDrawing.width * _shadowYOffsetMultiplier,
      ),
    );
    TouchyCanvasHelper.drawPath(
      canvas,
      shadowPath,
      _shadowPaint,
      gestureCallbacks: gestureCallbacks,
    );
  }

  final paint = freeDrawing.tool.getPaint(color: Color(freeDrawing.color));
  TouchyCanvasHelper.drawPath(
    canvas,
    path,
    paint,
    gestureCallbacks: gestureCallbacks,
  );
}

/// {@template scribble.canvas.draw_straight_line}
/// Draws a straight line on the canvas based on the given [LineSketchDrawing]
///
/// The [scaleFactor] is used to scale the line width.
/// {@endtemplate}
void _drawStraightLine(
  LineSketchDrawing line, {
  required Object canvas,
  required double scaleFactor,
  required GestureCallbacks? gestureCallbacks,
}) {
  if (line.anchorPoint == line.endPoint) {
    _drawPoint(
      canvas: canvas,
      width: line.width,
      scaleFactor: scaleFactor,
      color: line.color,
      pointerPosition: line.anchorPoint,
      tool: line.tool,
      gestureCallbacks: gestureCallbacks,
    );
    return;
  }

  final rectangleCoords = line.getRectangle(
    scaleFactor: scaleFactor,
  );

  final scaledLineWidth = line.width * 2 * scaleFactor;
  final halfWidth = scaledLineWidth / 2;

  final path = Path()
    ..moveTo(rectangleCoords.$1.dx, rectangleCoords.$1.dy)
    ..arcToPoint(rectangleCoords.$2, radius: Radius.circular(halfWidth))
    ..lineTo(rectangleCoords.$3.dx, rectangleCoords.$3.dy)
    ..arcToPoint(rectangleCoords.$4, radius: Radius.circular(halfWidth))
    ..lineTo(rectangleCoords.$1.dx, rectangleCoords.$1.dy);

  if (line.tool == Tool.tape) {
    final shadowPath = path.shift(
      Offset(
        scaledLineWidth * _shadowXOffsetMultiplier,
        scaledLineWidth * _shadowYOffsetMultiplier,
      ),
    );
    TouchyCanvasHelper.drawPath(
      canvas,
      shadowPath,
      _shadowPaint,
      gestureCallbacks: gestureCallbacks,
    );
  }

  final paint = line.tool.getPaint(color: Color(line.color));
  TouchyCanvasHelper.drawPath(
    canvas,
    path,
    paint,
    gestureCallbacks: gestureCallbacks,
  );
}

/// {@template scribble.canvas.draw_shape}
/// Draws a shape on the canvas based on the given [ShapeSketchDrawing]
/// {@endtemplate}
void _drawShape(
  ShapeSketchDrawing shape, {
  required Object canvas,
  required double scaleFactor,
  required GestureCallbacks? gestureCallbacks,
}) {
  if (shape.shapeTemplate.vertices.length < 3) {
    // TODO(Jei-sKappa): Throw an error
    return;
  }

  if (shape.anchorPoint == shape.endPoint) {
    _drawPoint(
      canvas: canvas,
      width: shape.width,
      scaleFactor: scaleFactor,
      color: shape.color,
      pointerPosition: shape.anchorPoint,
      tool: shape.tool,
      gestureCallbacks: gestureCallbacks,
    );
    return;
  }

  final scaledVertices = shape.calculateScaledVertices();

  final path = Path()
    ..moveTo(
      scaledVertices.first.x,
      scaledVertices.first.y,
    );

  for (var i = 1; i < shape.shapeTemplate.vertices.length; i++) {
    path.lineTo(
      scaledVertices[i].x,
      scaledVertices[i].y,
    );
  }

  path.close();

  if (shape.tool == Tool.tape) {
    final shadowPath = path.shift(
      Offset(
        // TODO(Jei-sKappa): Consider using same X/Y shadowOffsetMultiplier for all shapes
        // to have more pleasant shadows effect on some shapes.
        shape.width * _shadowXOffsetMultiplier,
        shape.width * _shadowYOffsetMultiplier,
      ),
    );
    TouchyCanvasHelper.drawPath(
      canvas,
      shadowPath,
      _shadowPaint,
      gestureCallbacks: gestureCallbacks,
    );
  }

  // TODO(Jei-sKappa): Check if is required to draw filled shape or not
  final paint = shape.tool.getPaint(color: Color(shape.color));
  TouchyCanvasHelper.drawPath(
    canvas,
    path,
    paint,
    gestureCallbacks: gestureCallbacks,
  );
}

// TODO(Jei-sKappa): Consider moving this to a shared file
/// Generates a [Path] from a a list of [Point]s.
///
/// The [width] is used to determine the width of the line.
///
/// The [scaleFactor] is used to scale the line width.
///
/// If [simulatePressure] is true, the line will be drawn as if it had
/// pressure information, if all its points have the same pressure.
Path? _getPathFromPoints(
  List<Point> points, {
  required double width,
  required bool simulatePressure,
  double scaleFactor = 1.0,
}) {
  final needSimulate = simulatePressure &&
      points.length > 1 &&
      points.every((p) => p.pressure == points.first.pressure);
  final pointVectors = points
      .map((point) => pf.PointVector(point.x, point.y, point.pressure))
      .toList();
  final outlinePoints = pf.getStroke(
    pointVectors,
    options: pf.StrokeOptions(
      size: width * 2 * scaleFactor,
      simulatePressure: needSimulate,
    ),
  );
  if (outlinePoints.isEmpty) {
    return null;
  } else if (outlinePoints.length < 2) {
    return Path()
      ..addOval(
        Rect.fromCircle(
          center: Offset(outlinePoints[0].dx, outlinePoints[0].dy),
          radius: 1,
        ),
      );
  } else {
    final path = Path()..moveTo(outlinePoints[0].dx, outlinePoints[0].dy);

    for (var i = 1; i < outlinePoints.length - 1; i++) {
      final p0 = outlinePoints[i];
      final p1 = outlinePoints[i + 1];
      path.quadraticBezierTo(
        p0.dx,
        p0.dy,
        (p0.dx + p1.dx) / 2,
        (p0.dy + p1.dy) / 2,
      );
    }
    return path;
  }
}

/// An extension for drawinging Scribble specific [Sketch]s on a canvas.
///
/// Provides the method [drawPoint], [drawFreeDrawing],
/// [drawStraightLine], [drawShape] and [drawSketchDrawing].
extension TouchyCanvasScribbleDrawings on TouchyCanvas {
  /// {@macro scribble.canvas.draw_point}
  void drawPoint({
    required double width,
    required double scaleFactor,
    required int color,
    required Point pointerPosition,
    required Tool? tool,
    GestureCallbacks? gestureCallbacks,
  }) =>
      _drawPoint(
        canvas: this,
        width: width,
        scaleFactor: scaleFactor,
        color: color,
        pointerPosition: pointerPosition,
        tool: tool,
        gestureCallbacks: gestureCallbacks,
      );

  /// {@macro scribble.canvas.draw_sketch_drawing}
  /// - [FreeSketchDrawing]s are drawn using [drawFreeDrawing].
  /// - [LineSketchDrawing]s are drawn using [drawStraightLine].
  /// - [ShapeSketchDrawing]s are drawn using [drawShape].
  void drawSketchDrawing(
    SketchDrawing drawing, {
    required double scaleFactor,
    required bool simulatePressure,
    GestureCallbacks? gestureCallbacks,
  }) =>
      _drawSketchDrawing(
        drawing,
        canvas: this,
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
        gestureCallbacks: gestureCallbacks,
      );

  /// {@macro scribble.canvas.draw_free_drawing}
  void drawFreeDrawing(
    FreeSketchDrawing freeDrawing, {
    required double scaleFactor,
    required bool simulatePressure,
    GestureCallbacks? gestureCallbacks,
  }) =>
      _drawFreeDrawing(
        freeDrawing,
        canvas: this,
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
        gestureCallbacks: gestureCallbacks,
      );

  /// {@macro scribble.canvas.draw_straight_line}
  void drawStraightLine(
    LineSketchDrawing line, {
    required double scaleFactor,
    GestureCallbacks? gestureCallbacks,
  }) =>
      _drawStraightLine(
        line,
        canvas: this,
        scaleFactor: scaleFactor,
        gestureCallbacks: gestureCallbacks,
      );

  /// {@macro scribble.canvas.draw_shape}
  void drawShape(
    ShapeSketchDrawing shape, {
    required double scaleFactor,
    GestureCallbacks? gestureCallbacks,
  }) =>
      _drawShape(
        shape,
        canvas: this,
        scaleFactor: scaleFactor,
        gestureCallbacks: gestureCallbacks,
      );
}

extension CanvasScribbleDrawings on Canvas {
  /// {@macro scribble.canvas.draw_point}
  void drawPoint({
    required double width,
    required double scaleFactor,
    required int color,
    required Point pointerPosition,
    required Tool? tool,
  }) =>
      _drawPoint(
        canvas: this,
        width: width,
        scaleFactor: scaleFactor,
        color: color,
        pointerPosition: pointerPosition,
        tool: tool,
        gestureCallbacks: null,
      );

  /// {@macro scribble.canvas.draw_sketch_drawing}
  /// - [FreeSketchDrawing]s are drawn using [drawFreeDrawing].
  /// - [LineSketchDrawing]s are drawn using [drawStraightLine].
  /// - [ShapeSketchDrawing]s are drawn using [drawShape].
  void drawSketchDrawing(
    SketchDrawing drawing, {
    required double scaleFactor,
    required bool simulatePressure,
  }) =>
      _drawSketchDrawing(
        drawing,
        canvas: this,
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
        gestureCallbacks: null,
      );

  /// {@macro scribble.canvas.draw_free_drawing}
  void drawFreeDrawing(
    FreeSketchDrawing freeDrawing, {
    required double scaleFactor,
    required bool simulatePressure,
  }) =>
      _drawFreeDrawing(
        freeDrawing,
        canvas: this,
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
        gestureCallbacks: null,
      );

  /// {@macro scribble.canvas.draw_straight_line}
  void drawStraightLine(
    LineSketchDrawing line, {
    required double scaleFactor,
  }) =>
      _drawStraightLine(
        line,
        canvas: this,
        scaleFactor: scaleFactor,
        gestureCallbacks: null,
      );

  /// {@macro scribble.canvas.draw_shape}
  void drawShape(
    ShapeSketchDrawing shape, {
    required double scaleFactor,
  }) =>
      _drawShape(
        shape,
        canvas: this,
        scaleFactor: scaleFactor,
        gestureCallbacks: null,
      );
}
