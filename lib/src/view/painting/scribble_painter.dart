import 'package:flutter/rendering.dart';
import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/canvas_scribble_drawings_extension.dart';

/// A painter for drawing a scribble sketch.
class ScribblePainter extends CustomPainter {
  /// Creates a new [ScribblePainter] instance.
  ScribblePainter({
    required this.sketch,
    required this.scaleFactor,
    required this.simulatePressure,
  });

  /// The [Sketch] to draw.
  final Sketch sketch;

  /// {@macro view.state.scribble_state.scale_factor}
  final double scaleFactor;

  /// {@macro scribble.simulate_pressure}
  final bool simulatePressure;

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < sketch.lines.length; ++i) {
      // TODO: Currently at every paint call, ALL the paths are redrawn.
      // Look at canvas.saveLayer/.save/.restore to optimize this.
      canvas.drawSketchLine(
        sketch.lines[i],
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
      );
    }
  }

  @override
  bool shouldRepaint(ScribblePainter oldDelegate) {
    return oldDelegate.sketch != sketch ||
        oldDelegate.simulatePressure != simulatePressure ||
        oldDelegate.scaleFactor != scaleFactor;
  }
}
