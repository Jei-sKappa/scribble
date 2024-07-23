import 'dart:ui';

import 'package:scribble/src/domain/model/sketch_line/sketch_line.dart';
import 'package:scribble/src/domain/model/tool/tool.dart';

Paint get _defaultPaint => Paint()..style = PaintingStyle.fill;

Paint get _penPaint => _defaultPaint;

Paint get _highlighterPaint => Paint()..style = PaintingStyle.fill
    // TODO: Blend mode do not work as expected: flutter seems to
    // have trouble with the blend mode after repaints
    // ..blendMode = BlendMode.darken
    // ..blendMode = BlendMode.multiply
    // ..blendMode = BlendMode.overlay // with no opacity create a cool effect
    // ..blendMode = BlendMode.plus // with no opacity create a cool effect
    // ..blendMode = BlendMode.screen // with no opacity create a cool effect
    // ..blendMode = BlendMode.xor
    ;

Paint get _tapePaint => _defaultPaint;

Paint get _seeThroughtTapePaint => Paint()
  ..style = PaintingStyle.stroke
  ..strokeWidth = 4.0
  ..strokeCap = StrokeCap.square;

/// Extension on [SketchLine] to get the paint for the line.
extension SketchLineToolPaint on SketchLine {
  /// Returns the paint for the line based on the tool and color.
  Paint get paintForTool {
    late Paint paint;
    switch (tool) {
      case Tool.pen:
        paint = _penPaint..color = Color(color);
      case Tool.highlighter:
        paint = _highlighterPaint..color = Color(color).withOpacity(0.5);
      case Tool.tape:
        paint = _tapePaint..color = Color(color);
      // paint = _seeThroughtTapePaint..color = Color(color);
    }

    return paint;
  }
}
