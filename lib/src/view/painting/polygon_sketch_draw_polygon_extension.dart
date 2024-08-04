import 'dart:math' hide Point;
import 'dart:ui';

import 'package:scribble/src/domain/model/point/point.dart';
import 'package:scribble/src/domain/model/polygon_template/polygon_template.dart';
import 'package:scribble/src/domain/model/sketch_drawing/sketch_drawing.dart';

extension PolygonSketchDrawScaledPolygon on PolygonSketchDrawing {
  List<Point> calculateScaledVertices() {
    final vertices = polygonTemplate.vertices;

    final polygonDetails = polygonTemplate.details ??
        () {
          // Calculate the size and bounds of the polygon
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
          final polygonWidth = maxX - minX;
          final polygonHeight = maxY - minY;
          return PolygonTemplateDetails(
            size: Size(polygonWidth, polygonHeight),
            minX: minX,
            minY: minY,
          );
        }();

    // Calculate the difference between the first and last point
    final dx = endPoint.x - anchorPoint.x;
    final dy = endPoint.y - anchorPoint.y;

    // Calculate the scale factor for the x and y axis
    var scaleX = dx / polygonDetails.size.width;
    var scaleY = dy / polygonDetails.size.height;

    // If the aspect ratio should be maintained, use the smaller scale factor
    // for both the x and y axis
    if (polygonTemplate.maintainAspectRatio) {
      final double scale = min(scaleX.abs(), scaleY.abs());
      scaleX = scaleX.isNegative ? -scale : scale;
      scaleY = scaleY.isNegative ? -scale : scale;
    }

    // Calculate the scaled vertices
    // The polygonDetails.mins are used to allow also negative values
    // in the polygon template definition.
    final scaledVertices = <Point>[];
    for (var i = 0; i < vertices.length; i++) {
      final vertex = vertices[i];
      scaledVertices.add(
        Point(
          anchorPoint.x + (vertex.x - polygonDetails.minX) * scaleX,
          anchorPoint.y + (vertex.y - polygonDetails.minY) * scaleY,
        ),
      );
    }

    return scaledVertices;
  }
}
