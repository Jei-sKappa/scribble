import 'dart:ui';

import 'package:scribble/scribble.dart';

// TODO: PolygonTemplate should not use Point with pressure

/// The [PolygonTemplate] for a square polygon.
const squarePolygon = PolygonTemplate(
  vertices: [
    Point(0, 0),
    Point(0, 500),
    Point(500, 500),
    Point(500, 0),
  ],
  maintainAspectRatio: true,
  details: PolygonTemplateDetails(
    size: Size(500, 500),
    minX: 0,
    minY: 0,
  ),
);

/// The [PolygonTemplate] for a isosceles triangle polygon.
const isoscelesTrianglePolygon = PolygonTemplate(
  vertices: [
    Point(0, 0),
    Point(3, 5),
    Point(-3, 5),
  ],
  maintainAspectRatio: true,
  details: PolygonTemplateDetails(
    size: Size(6, 5),
    minX: -3,
    minY: 0,
  ),
);
