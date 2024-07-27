import 'package:flutter/rendering.dart';
import 'package:scribble/scribble.dart';
import 'package:scribble/src/view/painting/canvas_scribble_drawings_extension.dart';

/// {@template scribble_editing_painter}
/// A painter for drawing the currently active line of a scribble sketch, as
/// well as the pointer when in drawing or erasing mode, if desired.
/// {@endtemplate}
class ScribbleEditingPainter extends CustomPainter {
  /// {@macro scribble_editing_painter}
  ScribbleEditingPainter({
    required this.state,
    required this.drawPointer,
    required this.drawEraser,
    required this.simulatePressure,
  });

  /// The current state of the scribble sketch
  final ScribbleState state;

  /// Whether to draw the pointer when in drawing mode.
  ///
  /// The pointer will be drawn as a filled circle with the currently selected
  /// color.
  final bool drawPointer;

  /// Whether to draw the pointer when in erasing mode
  ///
  /// The pointer will be drawn as a transparent circle with a black border.
  final bool drawEraser;

  /// {@macro scribble.simulate_pressure}
  final bool simulatePressure;

  @override
  void paint(Canvas canvas, Size size) {
    final activeDrawing = state.map(
      drawing: (s) => s.activeDrawing,
      erasing: (_) => null,
    );

    if (activeDrawing != null) {
      canvas.drawSketchDrawing(
        activeDrawing,
        scaleFactor: state.scaleFactor,
        simulatePressure: simulatePressure,
      );
    }

    // Draw the pointer if the pointer is in the canvas and the state is
    // drawing with no line currently being drawn (no tapped down) or erasing.
    if (state.pointerPosition != null &&
        ((state is Drawing &&
                drawPointer &&
                (state as Drawing).activeDrawing == null) ||
            state is Erasing && drawEraser)) {
      canvas.drawPoint(
        width: state.selectedWidth,
        scaleFactor: state.scaleFactor,
        color: state is Drawing ? (state as Drawing).selectedColor : 0xFF000000,
        pointerPosition: state.pointerPosition!,
        tool: state is Drawing ? (state as Drawing).selectedTool : null,
      
      );
    }
  }

  @override
  bool shouldRepaint(ScribbleEditingPainter oldDelegate) {
    return oldDelegate.state != state ||
        oldDelegate.simulatePressure != simulatePressure;
  }
}
