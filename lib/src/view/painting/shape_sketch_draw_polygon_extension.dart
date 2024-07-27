import 'dart:math' hide Point;
import 'dart:ui';

import 'package:scribble/src/domain/model/point/point.dart';
import 'package:scribble/src/domain/model/shape_template/shape_template.dart';
import 'package:scribble/src/domain/model/sketch_drawing/sketch_drawing.dart';

extension ShapeSketchDrawScaledPolygon on ShapeSketchDrawing {
  List<Point> calculateScaledVertices() {
    final vertices = shapeTemplate.vertices;

    final shapeDetails = shapeTemplate.details ??
        () {
          // Calculate the size and bounds of the shape
          late double minX;
          late double maxX;
          late double minY;
          late double maxY;
          for (var i = 0; i < vertices.length; i++) {
            final vertex = vertices[i];
            if (i == 0) {
              minX = vertex.x;
              maxX = vertex.x;
              minY = vertex.y;
              maxY = vertex.y;
            } else {
              minX = min(minX, vertex.x);
              maxX = max(maxX, vertex.x);
              minY = min(minY, vertex.y);
              maxY = max(maxY, vertex.y);
            }
          }
          final shapeWidth = maxX - minX;
          final shapeHeight = maxY - minY;
          return ShapeTemplateDetails(
            size: Size(shapeWidth, shapeHeight),
            minX: minX,
            minY: minY,
          );
        }();

    // Calculate the difference between the first and last point
    final dx = endPoint.x - anchorPoint.x;
    final dy = endPoint.y - anchorPoint.y;

    // Calculate the scale factor for the x and y axis
    var scaleX = dx / shapeDetails.size.width;
    var scaleY = dy / shapeDetails.size.height;

    // If the aspect ratio should be maintained, use the smaller scale factor
    // for both the x and y axis
    if (shapeTemplate.maintainAspectRatio) {
      final double scale = min(scaleX.abs(), scaleY.abs());
      scaleX = scaleX.isNegative ? -scale : scale;
      scaleY = scaleY.isNegative ? -scale : scale;
    }

    // Calculate the scaled vertices
    // The shapeDetails.mins are used to allow also negative values
    // in the shape template definition.
    final scaledVertices = <Point>[];
    for (var i = 0; i < vertices.length; i++) {
      final vertex = vertices[i];
      scaledVertices.add(
        Point(
          anchorPoint.x + (vertex.x - shapeDetails.minX) * scaleX,
          anchorPoint.y + (vertex.y - shapeDetails.minY) * scaleY,
        ),
      );
    }

    return scaledVertices;
  }
}
