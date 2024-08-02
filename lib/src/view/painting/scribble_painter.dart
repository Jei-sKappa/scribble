import 'package:flutter/material.dart';
import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/canvas_scribble_drawings_extension.dart';
import 'package:touchable/touchable.dart';

/// A painter for drawing a scribble sketch.
class ScribblePainter extends CustomPainter {
  /// Creates a new [ScribblePainter] instance.
  ScribblePainter({
    required this.canvasTouchDetectorContext,
    required this.sketch,
    required this.scaleFactor,
    required this.simulatePressure,
    this.onTap,
  });

  /// The [BuildContext] of the [CanvasTouchDetector] that is used to detect
  final BuildContext canvasTouchDetectorContext;

  /// The [Sketch] to draw.
  final Sketch sketch;

  /// {@macro view.state.scribble_state.scale_factor}
  final double scaleFactor;

  /// {@macro scribble.simulate_pressure}
  final bool simulatePressure;

  /// {@macro scribble.on_tap}
  final void Function(TapUpDetails details, SketchDrawing drawing)? onTap;

  @override
  void paint(Canvas canvas, Size size) {
    final interactiveCanvas = TouchyCanvas(canvasTouchDetectorContext, canvas);

    for (var i = 0; i < sketch.drawings.length; ++i) {
      // TODO(Jei-sKappa): Currently at every paint call, ALL the paths are redrawn.
      // Look at canvas.saveLayer/.save/.restore to optimize this.
      interactiveCanvas.drawSketchDrawing(
        sketch.drawings[i],
        scaleFactor: scaleFactor,
        simulatePressure: simulatePressure,
        gestureCallbacks: GestureCallbacks(
          onTapUp: onTap != null
              ? (details) => onTap!(details, sketch.drawings[i])
              : null,
        ),
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
