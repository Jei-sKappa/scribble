// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:scribble/scribble.dart';
// import 'package:scribble/src/view/simplification/sketch_simplifier.dart';

// class _MockSimplifier extends Mock implements SketchSimplifier {}

// void main() {
//   setUp(() {
//     registerFallbackValue(const Sketch(lines: []));
//     registerFallbackValue(
//       const SketchLine(points: [], color: 0xFFFFFF, width: 2),
//     );
//   });

//   group('ScribbleNotifier', () {
//     late ScribbleNotifier sut;
//     late _MockSimplifier simplifier;

//     const line = SketchLine(points: [Point(1, 1)], color: 0xFFFFFFFF, width: 2);
//     const emptyLine = SketchLine(points: [], color: 0x0, width: 0);
//     const sketch = Sketch(lines: [line]);
//     const emptySketch = Sketch(lines: []);

//     setUp(() {
//       simplifier = _MockSimplifier();

//       when(
//         () => simplifier.simplify(
//           any(),
//           pixelTolerance: any(named: "pixelTolerance"),
//         ),
//       ).thenReturn(emptyLine);

//       when(
//         () => simplifier.simplifySketch(
//           any(),
//           pixelTolerance: any(named: "pixelTolerance"),
//         ),
//       ).thenAnswer(
//         (invocation) => invocation.namedArguments[#pixelTolerance] == 0
//             ? invocation.positionalArguments[0] as Sketch
//             : emptySketch,
//       );

//       sut = ScribbleNotifier(
//         sketch: sketch,
//         simplifier: simplifier,
//       );
//     });

//     group("constructor", () {
//       test('initializes with the given sketch', () async {
//         expect(sut.value.sketch, sketch);
//         verify(() => simplifier.simplifySketch(sketch, pixelTolerance: 0));
//       });
//     });

//     group("simplify", () {
//       test('calls simplifier method', () async {
//         sut.setSimplificationTolerance(2);
//         expect(sut.value.simplificationTolerance, 2);
//         sut.simplify();
//         verify(() => simplifier.simplifySketch(sketch, pixelTolerance: 2));
//         expect(sut.value.sketch, emptySketch);
//       });

//       test('is undoable by default', () async {
//         expect(sut.canUndo, false);
//         sut
//           ..setSimplificationTolerance(2)
//           ..simplify();
//         expect(sut.canUndo, true);
//       });

//       test('is not undoable if set so', () async {
//         expect(sut.canUndo, false);
//         sut
//           ..setSimplificationTolerance(2)
//           ..simplify(addToUndoHistory: false);
//         expect(sut.canUndo, false);
//       });

//       test('is not undoable if it did nothing', () async {
//         expect(sut.canUndo, false);
//         sut
//           ..setSimplificationTolerance(0)
//           ..simplify();
//         expect(sut.canUndo, false);
//       });
//     });
//   });
// }
