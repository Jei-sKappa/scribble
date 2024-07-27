import 'dart:ui';

import 'package:scribble/scribble.dart';

// TODO: ShapeTemplate should not use Point with pressure

/// The [ShapeTemplate] for a square shape.
const squareShape = ShapeTemplate(
  vertices: [
    Point(0, 0),
    Point(0, 500),
    Point(500, 500),
    Point(500, 0),
  ],
  maintainAspectRatio: true,
  details: ShapeTemplateDetails(
    size: Size(500, 500),
    minX: 0,
    minY: 0,
  ),
);


/// The [ShapeTemplate] for a isosceles triangle shape.
const isoscelesTriangleShape = ShapeTemplate(
  vertices: [
    Point(0, 0),
    Point(3, 5),
    Point(-3, 5),
  ],
  maintainAspectRatio: true,
  details: ShapeTemplateDetails(
    size: Size(6, 5),
    minX: -3,
    minY: 0,
  ),
);
