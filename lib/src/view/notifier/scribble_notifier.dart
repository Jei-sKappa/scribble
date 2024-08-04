import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/line_sketch_draw_polygon_extension.dart';
import 'package:scribble/src/view/painting/point_to_offset_x.dart';
import 'package:scribble/src/view/painting/polygon_sketch_draw_polygon_extension.dart';
import 'package:scribble/src/view/simplification/sketch_simplifier.dart';
import 'package:value_notifier_tools/value_notifier_tools.dart';

// TODO: Move this into a more appropriate place
int _generateUnsecureId(ScribbleState state) {
  final lastId =
      state.sketch.drawings.isEmpty ? 0 : state.sketch.drawings.last.id as int;
  return lastId + 1;
}

/// {@template scribble_notifier_base}
/// The base class for a notifier that controls the state of a [Scribble]
/// widget.
///
/// This class is meant to be extended by a concrete implementation that
/// provides the actual behavior.
///
/// See [ScribbleNotifier] for the default implementation.
/// {@endtemplate}
abstract class ScribbleNotifierBase extends ValueNotifier<ScribbleState> {
  /// {@macro scribble_notifier_base}
  ScribbleNotifierBase(super.state);

  /// You need to provide a key that the [RepaintBoundary] can use so you can
  /// access it from the [renderImage] method.
  GlobalKey get repaintBoundaryKey;

  /// Should be called when the pointer hovers over the canvas with the
  /// corresponding [event].
  void onPointerHover(PointerHoverEvent event);

  /// Should be called when the pointer is pressed down on the canvas with the
  /// corresponding [event].
  void onPointerDown(PointerDownEvent event);

  /// Should be called when the pointer is moved on the canvas with the
  /// corresponding [event].
  void onPointerUpdate(PointerMoveEvent event);

  /// Should be called when the pointer is lifted from the canvas with the
  /// corresponding [event].
  void onPointerUp(PointerUpEvent event);

  /// Should be called when the pointer is canceled with the corresponding
  /// [event].
  void onPointerCancel(PointerCancelEvent event);

  /// Should be called when the pointer exits the canvas with the corresponding
  /// [event].
  void onPointerExit(PointerExitEvent event);

  /// Used to render the image to ByteData which can then be stored or reused
  /// for example in an [Image.memory] widget.
  ///
  /// Use [pixelRatio] to increase the resolution of the resulting image.
  /// You can specify a different [format], by default this method
  /// generates pngs.
  Future<ByteData> renderImage({
    double pixelRatio = 1.0,
    ui.ImageByteFormat format = ui.ImageByteFormat.png,
  }) async {
    final renderObject = repaintBoundaryKey.currentContext?.findRenderObject()
        as RenderRepaintBoundary?;
    if (renderObject == null) {
      throw StateError(
        "Tried to convert Scribble to Image, but no valid RenderObject was "
        "found!",
      );
    }
    final img = await renderObject.toImage(pixelRatio: pixelRatio);
    return (await img.toByteData(format: format))!;
  }
}

/// {@template scribble_notifier}
/// The default implementation of a [ScribbleNotifierBase].
///
/// This class controls the state and behavior for a [Scribble] widget.
/// {@endtemplate}
class ScribbleNotifier extends ScribbleNotifierBase
    with HistoryValueNotifierMixin<ScribbleState> {
  /// {@macro scribble_notifier}
  ScribbleNotifier({
    /// If you pass a sketch here, the notifier will use that sketch as a
    /// starting point.
    Sketch? sketch,
    Object Function(ScribbleState state)? idGenerator,

    // TODO(Jei-sKappa): Create the option to assing a tool based on the pointer type
    /// Which pointers can be drawn with and are captured.
    ScribblePointerMode allowedPointersMode = ScribblePointerMode.all,

    // TODO(Jei-sKappa): Create the option to disable limit
    /// How many states you want stored in the undo history, 30 by default.
    int maxHistoryLength = 30,
    this.widths = const [5, 10, 15],
    this.pressureCurve = Curves.linear,
    this.simplifier = const VisvalingamSimplifier(),

    /// {@macro view.state.scribble_state.simplification_tolerance}
    double simplificationTolerance = 0,
  })  : idGenerator = idGenerator ?? _generateUnsecureId,
        super(
          ScribbleState.drawing(
            sketch: switch (sketch) {
              Sketch() => simplifier.simplifySketch(
                  sketch,
                  pixelTolerance: simplificationTolerance,
                ),
              null => const Sketch(drawings: []),
            },
            selectedWidth: widths[0],
            allowedPointersMode: allowedPointersMode,
            simplificationTolerance: simplificationTolerance,
          ),
        ) {
    this.maxHistoryLength = maxHistoryLength;
  }

  /// A function that generates an identifier for a drawing in the sketch.
  ///
  /// The [idGenerator] function takes a [ScribbleState] object as input and
  /// returns an identifier.
  final Object Function(ScribbleState state) idGenerator;

  /// The supported widths, mainly useful for rendering UI, you can still set
  /// the width to any arbitrary value from code.
  ///
  /// The first entry in this list will be the starting width.
  final List<double> widths;

  /// The curve that's used to map pen pressure to the pressure value when
  /// recording, by default it's linear.
  final Curve pressureCurve;

  /// The state of the sketch at this moment.
  ///
  /// If you want to store it somewhere you can call ``.toJson()`` on it to
  /// receive a map.
  Sketch get currentSketch => value.sketch;

  final GlobalKey _repaintBoundaryKey = GlobalKey();

  @override
  GlobalKey get repaintBoundaryKey => _repaintBoundaryKey;

  /// The [SketchSimplifier] that is used to simplify the lines of the sketch.
  ///
  /// Defaults to [VisvalingamSimplifier], but you can implement your own.
  final SketchSimplifier simplifier;

  /// Only apply the sketch from the undo history, otherwise keep current state
  @override
  @protected
  ScribbleState transformHistoryValue(
    ScribbleState historyValue,
    ScribbleState currentState,
  ) {
    return currentState.copyWith(
      sketch: historyValue.sketch,
    );
  }

  /// Can be used to update the state of the Sketch externally (e.g. when
  /// fetching from a server) to what is passed in as [sketch];
  ///
  /// By default, this state of the sketch gets added to the undo history. If
  /// this is not desired, set [addToUndoHistory] to `false`.
  ///
  /// The sketch will be simplified using the currently set simplification
  /// tolerance. If you don't want simplification, call
  /// [setSimplificationTolerance] to set it to 0.
  void setSketch({
    required Sketch sketch,
    bool addToUndoHistory = true,
  }) {
    final newState = value.copyWith(
      sketch: sketch,
    );
    if (addToUndoHistory) {
      value = newState;
    } else {
      temporaryValue = newState;
    }
  }

  /// Clear the entire drawing.
  void clear() {
    value = switch (value) {
      final Drawing d => d.copyWith(
          sketch: const Sketch(drawings: []),
          activeDrawing: null,
        ),
      final Erasing e => e.copyWith(
          sketch: const Sketch(drawings: []),
        ),
    };
  }

  /// Sets the width of the next line
  void setStrokeWidth(double strokeWidth) {
    temporaryValue = value.copyWith(
      selectedWidth: strokeWidth,
    );
  }

  /// Switches to eraser mode
  void setEraser() {
    temporaryValue = ScribbleState.erasing(
      sketch: value.sketch,
      selectedWidth: value.selectedWidth,
      scaleFactor: value.scaleFactor,
      allowedPointersMode: value.allowedPointersMode,
      activePointerIds: value.activePointerIds,
      selectedTool: value.selectedTool,
      drawMode: value.drawMode,
      selectedPolygon: value.selectedPolygon,
    );
  }

  /// Sets the current mode of allowed pointers to the given
  /// [ScribblePointerMode]
  void setAllowedPointersMode(ScribblePointerMode allowedPointersMode) {
    temporaryValue = value.copyWith(
      allowedPointersMode: allowedPointersMode,
    );
  }

  /// Sets the zoom factor to allow for adjusting line width.
  ///
  /// If the factor is 2 for example, lines will be drawn half as thick as
  /// actually selected to allow for drawing details. Has to be greater than 0.
  void setScaleFactor(double factor) {
    assert(factor > 0, "The scale factor must be greater than 0.");
    temporaryValue = value.copyWith(
      scaleFactor: factor,
    );
  }

  /// Sets the color of the pen to the given color.
  void setColor(Color color) {
    temporaryValue = value.map(
      drawing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: color.value,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        selectedTool: s.selectedTool,
        drawMode: value.drawMode,
        selectedPolygon: value.selectedPolygon,
      ),
      erasing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: color.value,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        scaleFactor: value.scaleFactor,
        activePointerIds: value.activePointerIds,
        selectedTool: s.selectedTool,
        drawMode: value.drawMode,
        selectedPolygon: value.selectedPolygon,
      ),
    );
  }

  /// Sets the tool to the given tool.
  void setTool(Tool tool) {
    temporaryValue = value.map(
      drawing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: s.selectedColor,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        selectedTool: tool,
        drawMode: value.drawMode,
        selectedPolygon: value.selectedPolygon,
      ),
      erasing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: const Color(0xFF000000).value,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        scaleFactor: value.scaleFactor,
        activePointerIds: value.activePointerIds,
        selectedTool: tool,
        drawMode: value.drawMode,
        selectedPolygon: value.selectedPolygon,
      ),
    );
  }

  /// Sets the polygon to the given polygon.
  void setPolygon(PolygonTemplate polygon) {
    temporaryValue = value.map(
      drawing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: s.selectedColor,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        selectedTool: value.selectedTool,
        drawMode: DrawMode.polygon,
        selectedPolygon: polygon,
      ),
      erasing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: const Color(0xFF000000).value,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        scaleFactor: value.scaleFactor,
        activePointerIds: value.activePointerIds,
        selectedTool: value.selectedTool,
        drawMode: DrawMode.polygon,
        selectedPolygon: polygon,
      ),
    );
  }

  /// Sets the draw mode to the given mode.
  void setDrawMode(DrawMode mode) {
    temporaryValue = value.map(
      drawing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: s.selectedColor,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        selectedTool: value.selectedTool,
        drawMode: mode,
        selectedPolygon: value.selectedPolygon,
      ),
      erasing: (s) => ScribbleState.drawing(
        sketch: s.sketch,
        selectedColor: const Color(0xFF000000).value,
        selectedWidth: s.selectedWidth,
        allowedPointersMode: s.allowedPointersMode,
        scaleFactor: value.scaleFactor,
        activePointerIds: value.activePointerIds,
        selectedTool: value.selectedTool,
        drawMode: mode,
        selectedPolygon: value.selectedPolygon,
      ),
    );
  }

  /// Sets the simplification degree for the sketch in logical pixels.
  ///
  /// 0 means no simplification, 1px is a good starting point for most sketches.
  /// The higher the degree, the more the details will be eroded.
  ///
  /// **Info:** Simplification quickly breaks simulated pressure, since it
  /// removes points that are close together first, so pressure simulation
  /// assumes a more even speed of the pen.
  ///
  /// Changing this value by itself will only affect future lines. If you want
  /// to simplify existing lines, see [simplify].
  void setSimplificationTolerance(double degree) {
    temporaryValue = value.copyWith(
      simplificationTolerance: degree,
    );
  }

  /// Simplifies the current sketch to the current simplification degree using
  /// [simplifier].
  ///
  /// This will simplify all lines. If [addToUndoHistory] is true, this step
  /// will be added to the undo history
  void simplify({bool addToUndoHistory = true}) {
    final newSketch = simplifier.simplifySketch(
      value.sketch,
      pixelTolerance: value.simplificationTolerance,
    );
    if (addToUndoHistory) {
      value = value.copyWith(sketch: newSketch);
    } else {
      temporaryValue = value.copyWith(sketch: newSketch);
    }
  }

  /// Used by the Listener callback to display the pen if desired
  @override
  void onPointerHover(PointerHoverEvent event) {
    if (!value.supportedPointerKinds.contains(event.kind)) return;
    temporaryValue = value.copyWith(
      pointerPosition:
          event.distance > 10000 ? null : _getPointFromEvent(event),
    );
  }

  /// Used by the Listener callback to start drawing
  @override
  void onPointerDown(PointerDownEvent event) {
    if (!value.supportedPointerKinds.contains(event.kind)) return;
    var s = value;

    if (s is Drawing) {
      // Are there already pointers on the screen?
      if (s.activePointerIds.isNotEmpty && s.activeDrawing != null) {
        // Handle multitap
        switch (s.activeDrawing!) {
          case final FreeSketchDrawing freeSketchDrawing:
            if (freeSketchDrawing.points.length > 2) {
              // Finish the line
              temporaryValue = _finishLineForState(s);
            } else {
              // The line is too short, we can probably ignore it
              temporaryValue = s.copyWith(
                activeDrawing: null,
              );
            }
          case final LineSketchDrawing _:
            temporaryValue = _finishLineForState(s);
          case final PolygonSketchDrawing _:
            temporaryValue = _finishLineForState(s);
        }
      }

      final id = idGenerator(s);

      // Handle actual tap
      switch (s.drawMode) {
        case DrawMode.free:
          s = s.copyWith(
            activeDrawing: FreeSketchDrawing(
              id: id,
              points: [_getPointFromEvent(event)],
              color: s.selectedColor,
              width: s.selectedWidth / s.scaleFactor,
              tool: s.selectedTool,
            ),
          );
        case DrawMode.line:
          s = s.copyWith(
            activeDrawing: LineSketchDrawing(
              id: id,
              anchorPoint: _getPointFromEvent(event),
              endPoint: _getPointFromEvent(event),
              color: s.selectedColor,
              width: s.selectedWidth / s.scaleFactor,
              tool: s.selectedTool,
            ),
          );
        case DrawMode.polygon:
          s = s.copyWith(
            activeDrawing: PolygonSketchDrawing(
              id: id,
              anchorPoint: _getPointFromEvent(event),
              endPoint: _getPointFromEvent(event),
              polygonTemplate: s.selectedPolygon ?? squarePolygon,
              isFilled: false,
              color: s.selectedColor,
              width: s.selectedWidth / s.scaleFactor,
              tool: s.selectedTool,
            ),
          );
      }
    }

    temporaryValue = s.copyWith(
      activePointerIds: [...value.activePointerIds, event.pointer],
    );
  }

  /// Used by the Listener callback to update the drawing
  @override
  void onPointerUpdate(PointerMoveEvent event) {
    if (!value.supportedPointerKinds.contains(event.kind)) return;
    if (!value.active) {
      temporaryValue = value.copyWith(
        pointerPosition: null,
      );
      return;
    }
    if (value is Drawing) {
      temporaryValue = _addPoint(event, value).copyWith(
        pointerPosition: _getPointFromEvent(event),
      );
    } else if (value is Erasing) {
      temporaryValue = _erasePoint(event).copyWith(
        pointerPosition: _getPointFromEvent(event),
      );
    }
  }

  /// Used by the Listener callback to finish a line
  @override
  void onPointerUp(PointerUpEvent event) {
    if (!value.supportedPointerKinds.contains(event.kind)) return;
    final pos =
        event.kind == PointerDeviceKind.mouse ? value.pointerPosition : null;
    if (value is Drawing) {
      value = _finishLineForState(_addPoint(event, value)).copyWith(
        pointerPosition: pos,
        activePointerIds:
            value.activePointerIds.where((id) => id != event.pointer).toList(),
      );
    } else if (value is Erasing) {
      value = _erasePoint(event).copyWith(
        pointerPosition: pos,
        activePointerIds:
            value.activePointerIds.where((id) => id != event.pointer).toList(),
      );
    }
  }

  /// Used by the Listener callback to stop displaying the cursor
  @override
  void onPointerCancel(PointerCancelEvent event) {
    if (!value.supportedPointerKinds.contains(event.kind)) return;
    if (value is Drawing) {
      value = _finishLineForState(_addPoint(event, value)).copyWith(
        pointerPosition: null,
        activePointerIds:
            value.activePointerIds.where((id) => id != event.pointer).toList(),
      );
    } else if (value is Erasing) {
      value = _erasePoint(event).copyWith(
        pointerPosition: null,
        activePointerIds:
            value.activePointerIds.where((id) => id != event.pointer).toList(),
      );
    }
  }

  @override
  void onPointerExit(PointerExitEvent event) {
    if (!value.supportedPointerKinds.contains(event.kind)) return;
    temporaryValue = _finishLineForState(value).copyWith(
      pointerPosition: null,
      activePointerIds:
          value.activePointerIds.where((id) => id != event.pointer).toList(),
    );
  }

  bool _isDistanceEnough(Offset a, Offset b) =>
      (a - b).distance > (kPrecisePointerPanSlop / value.scaleFactor);

  ScribbleState _addPoint(PointerEvent event, ScribbleState s) {
    if (s is Erasing || !s.active) return s;

    if (s is Drawing && s.activeDrawing == null) return s;

    final currentDrawing = (s as Drawing).activeDrawing!;

    switch (currentDrawing) {
      case final FreeSketchDrawing freeSketchDrawing:
        if (freeSketchDrawing.points.isNotEmpty &&
            !_isDistanceEnough(
              freeSketchDrawing.points.last.asOffset,
              event.localPosition,
            )) {
          return s;
        }

        return s.copyWith(
          activeDrawing: freeSketchDrawing.copyWith(
            points: [
              ...freeSketchDrawing.points,
              _getPointFromEvent(event),
            ],
          ),
        );
      case final LineSketchDrawing lineSketchDrawing:
        if (!_isDistanceEnough(
          lineSketchDrawing.anchorPoint.asOffset,
          event.localPosition,
        )) {
          return s;
        }

        return s.copyWith(
          activeDrawing: lineSketchDrawing.copyWith(
            endPoint: _getPointFromEvent(event),
          ),
        );
      case final PolygonSketchDrawing polygonSketchDrawing:
        if (!_isDistanceEnough(
          polygonSketchDrawing.anchorPoint.asOffset,
          event.localPosition,
        )) {
          return s;
        }

        return s.copyWith(
          activeDrawing: polygonSketchDrawing.copyWith(
            endPoint: _getPointFromEvent(event),
          ),
        );
    }
  }

  ScribbleState _erasePoint(PointerEvent event) {
    return value.copyWith.sketch(
      drawings: value.sketch.drawings.where((drawing) {
        switch (drawing) {
          case final FreeSketchDrawing freeSketchDrawing:
            // Return true if all points are far enough away from the eraser
            return freeSketchDrawing.points.every(
              (p) =>
                  (event.localPosition - p.asOffset).distance >
                  drawing.width + value.selectedWidth,
            );
          case final LineSketchDrawing lineSketchDrawing:
            final rectangleCoords = lineSketchDrawing.getRectangle(
              scaleFactor: value.scaleFactor,
            );

            final verticesCoords = [
              rectangleCoords.$1,
              rectangleCoords.$2,
              rectangleCoords.$3,
              rectangleCoords.$4,
            ];

            final verticelPoints =
                verticesCoords.map((p) => Point(p.dx, p.dy)).toList();

            return !Poly.isPointInPolygon(
              _getPointFromEvent(event),
              verticelPoints,
            );
          case final PolygonSketchDrawing polygonSketchDrawing:
            return !Poly.isPointInPolygon(
              _getPointFromEvent(event),
              polygonSketchDrawing.calculateScaledVertices(),
            );
        }
      }).toList(),
    );
  }

  /// Converts a pointer event to the [Point] on the canvas.
  Point _getPointFromEvent(PointerEvent event) {
    final p = kIsWeb || event.pressureMin == event.pressureMax
        ? 0.5
        : (event.pressure - event.pressureMin) /
            (event.pressureMax - event.pressureMin);
    return Point(
      event.localPosition.dx,
      event.localPosition.dy,
      pressure: pressureCurve.transform(p),
    );
  }

  ScribbleState _finishLineForState(ScribbleState s) {
    if (s case Drawing(activeDrawing: final activeDrawing?)) {
      return s.copyWith(
        activeDrawing: null,
        sketch: s.sketch.copyWith(
          drawings: [
            ...s.sketch.drawings,
            simplifier.simplifyDrawing(
              activeDrawing,
              pixelTolerance: s.simplificationTolerance,
            ),
          ],
        ),
      );
    }
    return s;
  }
}

//!
//!
//!

// bool _isPointOnSegment(Point p, Point s1, Point s2) {
//   // Collinearity check
//   final collinear =
//       (p.x - s1.x) * (s2.y - s1.y) == (p.y - s1.y) * (s2.x - s1.x);
//   if (!collinear) return false;

//   // Segment bounding check
//   final withinBounds =
//       (p.x >= s1.x && p.x <= s2.x || p.x >= s2.x && p.x <= s1.x) &&
//           (p.y >= s1.y && p.y <= s2.y || p.y >= s2.y && p.y <= s1.y);

//   return withinBounds;
// }

//!
//!
//!

class Poly {
  /// Check if a Point [point] is inside a polygon representing by a List of Point [vertices]
  /// by using a Ray-Casting algorithm
  static bool isPointInPolygon(Point point, List<Point> vertices) {
    var intersectCount = 0;
    for (var i = 0; i < vertices.length; i += 1) {
      final vertB = i == vertices.length - 1 ? vertices[0] : vertices[i + 1];
      if (Poly.rayCastIntersect(point, vertices[i], vertB)) {
        intersectCount += 1;
      }
    }
    return (intersectCount % 2) == 1;
  }

  /// Ray-Casting algorithm implementation
  /// Calculate whether a horizontal ray cast eastward from [point]
  /// will intersect with the line between [vertA] and [vertB]
  /// Refer to `https://en.wikipedia.org/wiki/Point_in_polygon` for more explanation
  /// or the example comment bloc at the end of this file
  static bool rayCastIntersect(Point point, Point vertA, Point vertB) {
    final aY = vertA.y;
    final bY = vertB.y;
    final aX = vertA.x;
    final bX = vertB.x;
    final pY = point.y;
    final pX = point.x;

    if ((aY > pY && bY > pY) || (aY < pY && bY < pY) || (aX < pX && bX < pX)) {
      // The case where the ray does not possibly pass through the polygon edge,
      // because both points A and B are above/below the line,
      // or both are to the left/west of the starting point
      // (as the line travels eastward into the polygon).
      // Therefore we should not perform the check and simply return false.
      // If we did not have this check we would get false positives.
      return false;
    }

    // y = mx + b : Standard linear equation
    // (y-b)/m = x : Formula to solve for x

    // M is rise over run -> the slope or angle between vertices A and B.
    final m = (aY - bY) / (aX - bX);
    // B is the Y-intercept of the line between vertices A and B
    final b = ((aX * -1) * m) + aY;
    // We want to find the X location at which a flat horizontal ray at Y height
    // of pY would intersect with the line between A and B.
    // So we use our rearranged Y = MX+B, but we use pY as our Y value
    final x = (pY - b) / m;

    // If the value of X
    // (the x point at which the ray intersects the line created by points A and B)
    // is "ahead" of the point's X value, then the ray can be said to intersect with the polygon.
    return x > pX;
  }
}
//!
//!
//!

// enum PointInPolygonResult {
//   isInside,
//   isOnEdge,
//   isOutside,
// }

// PointInPolygonResult pointInPolygon(Point p, PolygonTemplate polygon) {
//   var i = 0;
//   var ii = 0;
//   var k = 0;
//   num f = 0;
//   num u1 = 0;
//   num v1 = 0;
//   num u2 = 0;
//   num v2 = 0;
//   Position currentP;
//   Position nextP;

//   final num x = p.coordinates.lng;
//   final num y = p.coordinates.lat;

//   final int numContours = polygon.coordinates.length;
//   for (i; i < numContours; i++) {
//     ii = 0;
//     final contourLen = polygon.coordinates[i].length - 1;
//     final contour = polygon.coordinates[i];

//     currentP = contour[0];
//     if (currentP[0] != contour[contourLen][0] &&
//         currentP[1] != contour[contourLen][1]) {
//       throw Exception('First and last coordinates in a ring must be the same');
//     }

//     u1 = currentP.lng - x;
//     v1 = currentP.lat - y;

//     for (ii; ii < contourLen; ii++) {
//       nextP = contour[ii + 1];

//       v2 = nextP.lat - y;

//       if ((v1 < 0 && v2 < 0) || (v1 > 0 && v2 > 0)) {
//         currentP = nextP;
//         v1 = v2;
//         u1 = currentP.lng - x;
//         continue;
//       }

//       u2 = nextP.lng - p.coordinates.lng;

//       if (v2 > 0 && v1 <= 0) {
//         f = (u1 * v2) - (u2 * v1);
//         if (f > 0) {
//           k = k + 1;
//         } else if (f == 0) {
//           return PointInPolygonResult.isOnEdge;
//         }
//       } else if (v1 > 0 && v2 <= 0) {
//         f = (u1 * v2) - (u2 * v1);
//         if (f < 0) {
//           k = k + 1;
//         } else if (f == 0) {
//           return PointInPolygonResult.isOnEdge;
//         }
//       } else if (v2 == 0 && v1 < 0) {
//         f = (u1 * v2) - (u2 * v1);
//         if (f == 0) {
//           return PointInPolygonResult.isOnEdge;
//         }
//       } else if (v1 == 0 && v2 < 0) {
//         f = u1 * v2 - u2 * v1;
//         if (f == 0) return PointInPolygonResult.isOnEdge;
//       } else if (v1 == 0 && v2 == 0) {
//         if (u2 <= 0 && u1 >= 0) {
//           return PointInPolygonResult.isOnEdge;
//         } else if (u1 <= 0 && u2 >= 0) {
//           return PointInPolygonResult.isOnEdge;
//         }
//       }
//       currentP = nextP;
//       v1 = v2;
//       u1 = u2;
//     }
//   }

//   if (k % 2 == 0) {
//     return PointInPolygonResult.isOutside;
//   }
//   return PointInPolygonResult.isInside;
// }
