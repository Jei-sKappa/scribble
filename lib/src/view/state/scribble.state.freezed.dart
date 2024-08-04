// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scribble.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScribbleState _$ScribbleStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'drawing':
      return Drawing.fromJson(json);
    case 'erasing':
      return Erasing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ScribbleState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ScribbleState {
  /// The current state of the sketch
  Sketch get sketch => throw _privateConstructorUsedError;

  /// The draw mode that is currently active
  DrawMode get drawMode => throw _privateConstructorUsedError;

  /// Which pointers are allowed for drawing and will be captured by the
  /// scribble widget.
  ScribblePointerMode get allowedPointersMode =>
      throw _privateConstructorUsedError;

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  List<int> get activePointerIds => throw _privateConstructorUsedError;

  /// The current position of the pointer
  Point? get pointerPosition => throw _privateConstructorUsedError;

  /// The current width of the pen
  double get selectedWidth => throw _privateConstructorUsedError;

  /// {@template view.state.scribble_state.scale_factor}
  /// How much the widget is scaled at the moment.
  ///
  /// Can be used if zoom functionality is needed
  /// (e.g. through InteractiveViewer) so that the pen width remains the same.
  /// {@endtemplate}
  double get scaleFactor => throw _privateConstructorUsedError;

  /// {@template view.state.scribble_state.simplification_tolerance}
  /// The current tolerance of simplification, in pixels.
  ///
  /// Lines will be simplified when they are finished. A value of 0 (default)
  /// will mean no simplification.
  /// {@endtemplate}
  double get simplificationTolerance => throw _privateConstructorUsedError;

  /// The currently selected tool
  Tool get selectedTool => throw _privateConstructorUsedError;

  /// The currently selected polygon
  PolygonTemplate? get selectedPolygon => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)
        drawing,
    required TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)
        erasing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        drawing,
    TResult? Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        erasing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        drawing,
    TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        erasing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Drawing value) drawing,
    required TResult Function(Erasing value) erasing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Drawing value)? drawing,
    TResult? Function(Erasing value)? erasing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Drawing value)? drawing,
    TResult Function(Erasing value)? erasing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScribbleStateCopyWith<ScribbleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScribbleStateCopyWith<$Res> {
  factory $ScribbleStateCopyWith(
          ScribbleState value, $Res Function(ScribbleState) then) =
      _$ScribbleStateCopyWithImpl<$Res, ScribbleState>;
  @useResult
  $Res call(
      {Sketch sketch,
      DrawMode drawMode,
      ScribblePointerMode allowedPointersMode,
      List<int> activePointerIds,
      Point? pointerPosition,
      double selectedWidth,
      double scaleFactor,
      double simplificationTolerance,
      Tool selectedTool,
      PolygonTemplate? selectedPolygon});

  $SketchCopyWith<$Res> get sketch;
  $PointCopyWith<$Res>? get pointerPosition;
  $PolygonTemplateCopyWith<$Res>? get selectedPolygon;
}

/// @nodoc
class _$ScribbleStateCopyWithImpl<$Res, $Val extends ScribbleState>
    implements $ScribbleStateCopyWith<$Res> {
  _$ScribbleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sketch = null,
    Object? drawMode = null,
    Object? allowedPointersMode = null,
    Object? activePointerIds = null,
    Object? pointerPosition = freezed,
    Object? selectedWidth = null,
    Object? scaleFactor = null,
    Object? simplificationTolerance = null,
    Object? selectedTool = null,
    Object? selectedPolygon = freezed,
  }) {
    return _then(_value.copyWith(
      sketch: null == sketch
          ? _value.sketch
          : sketch // ignore: cast_nullable_to_non_nullable
              as Sketch,
      drawMode: null == drawMode
          ? _value.drawMode
          : drawMode // ignore: cast_nullable_to_non_nullable
              as DrawMode,
      allowedPointersMode: null == allowedPointersMode
          ? _value.allowedPointersMode
          : allowedPointersMode // ignore: cast_nullable_to_non_nullable
              as ScribblePointerMode,
      activePointerIds: null == activePointerIds
          ? _value.activePointerIds
          : activePointerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pointerPosition: freezed == pointerPosition
          ? _value.pointerPosition
          : pointerPosition // ignore: cast_nullable_to_non_nullable
              as Point?,
      selectedWidth: null == selectedWidth
          ? _value.selectedWidth
          : selectedWidth // ignore: cast_nullable_to_non_nullable
              as double,
      scaleFactor: null == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      simplificationTolerance: null == simplificationTolerance
          ? _value.simplificationTolerance
          : simplificationTolerance // ignore: cast_nullable_to_non_nullable
              as double,
      selectedTool: null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as Tool,
      selectedPolygon: freezed == selectedPolygon
          ? _value.selectedPolygon
          : selectedPolygon // ignore: cast_nullable_to_non_nullable
              as PolygonTemplate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SketchCopyWith<$Res> get sketch {
    return $SketchCopyWith<$Res>(_value.sketch, (value) {
      return _then(_value.copyWith(sketch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res>? get pointerPosition {
    if (_value.pointerPosition == null) {
      return null;
    }

    return $PointCopyWith<$Res>(_value.pointerPosition!, (value) {
      return _then(_value.copyWith(pointerPosition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PolygonTemplateCopyWith<$Res>? get selectedPolygon {
    if (_value.selectedPolygon == null) {
      return null;
    }

    return $PolygonTemplateCopyWith<$Res>(_value.selectedPolygon!, (value) {
      return _then(_value.copyWith(selectedPolygon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DrawingImplCopyWith<$Res>
    implements $ScribbleStateCopyWith<$Res> {
  factory _$$DrawingImplCopyWith(
          _$DrawingImpl value, $Res Function(_$DrawingImpl) then) =
      __$$DrawingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sketch sketch,
      DrawMode drawMode,
      SketchDrawing? activeDrawing,
      ScribblePointerMode allowedPointersMode,
      List<int> activePointerIds,
      Point? pointerPosition,
      int selectedColor,
      double selectedWidth,
      double scaleFactor,
      double simplificationTolerance,
      Tool selectedTool,
      PolygonTemplate? selectedPolygon});

  @override
  $SketchCopyWith<$Res> get sketch;
  $SketchDrawingCopyWith<$Res>? get activeDrawing;
  @override
  $PointCopyWith<$Res>? get pointerPosition;
  @override
  $PolygonTemplateCopyWith<$Res>? get selectedPolygon;
}

/// @nodoc
class __$$DrawingImplCopyWithImpl<$Res>
    extends _$ScribbleStateCopyWithImpl<$Res, _$DrawingImpl>
    implements _$$DrawingImplCopyWith<$Res> {
  __$$DrawingImplCopyWithImpl(
      _$DrawingImpl _value, $Res Function(_$DrawingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sketch = null,
    Object? drawMode = null,
    Object? activeDrawing = freezed,
    Object? allowedPointersMode = null,
    Object? activePointerIds = null,
    Object? pointerPosition = freezed,
    Object? selectedColor = null,
    Object? selectedWidth = null,
    Object? scaleFactor = null,
    Object? simplificationTolerance = null,
    Object? selectedTool = null,
    Object? selectedPolygon = freezed,
  }) {
    return _then(_$DrawingImpl(
      sketch: null == sketch
          ? _value.sketch
          : sketch // ignore: cast_nullable_to_non_nullable
              as Sketch,
      drawMode: null == drawMode
          ? _value.drawMode
          : drawMode // ignore: cast_nullable_to_non_nullable
              as DrawMode,
      activeDrawing: freezed == activeDrawing
          ? _value.activeDrawing
          : activeDrawing // ignore: cast_nullable_to_non_nullable
              as SketchDrawing?,
      allowedPointersMode: null == allowedPointersMode
          ? _value.allowedPointersMode
          : allowedPointersMode // ignore: cast_nullable_to_non_nullable
              as ScribblePointerMode,
      activePointerIds: null == activePointerIds
          ? _value._activePointerIds
          : activePointerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pointerPosition: freezed == pointerPosition
          ? _value.pointerPosition
          : pointerPosition // ignore: cast_nullable_to_non_nullable
              as Point?,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as int,
      selectedWidth: null == selectedWidth
          ? _value.selectedWidth
          : selectedWidth // ignore: cast_nullable_to_non_nullable
              as double,
      scaleFactor: null == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      simplificationTolerance: null == simplificationTolerance
          ? _value.simplificationTolerance
          : simplificationTolerance // ignore: cast_nullable_to_non_nullable
              as double,
      selectedTool: null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as Tool,
      selectedPolygon: freezed == selectedPolygon
          ? _value.selectedPolygon
          : selectedPolygon // ignore: cast_nullable_to_non_nullable
              as PolygonTemplate?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SketchDrawingCopyWith<$Res>? get activeDrawing {
    if (_value.activeDrawing == null) {
      return null;
    }

    return $SketchDrawingCopyWith<$Res>(_value.activeDrawing!, (value) {
      return _then(_value.copyWith(activeDrawing: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DrawingImpl extends Drawing {
  const _$DrawingImpl(
      {required this.sketch,
      this.drawMode = DrawMode.free,
      this.activeDrawing,
      this.allowedPointersMode = ScribblePointerMode.all,
      final List<int> activePointerIds = const [],
      this.pointerPosition,
      this.selectedColor = 0xFF000000,
      this.selectedWidth = 5,
      this.scaleFactor = 1,
      this.simplificationTolerance = 0,
      this.selectedTool = Tool.pen,
      this.selectedPolygon,
      final String? $type})
      : _activePointerIds = activePointerIds,
        $type = $type ?? 'drawing',
        super._();

  factory _$DrawingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DrawingImplFromJson(json);

  /// The current state of the sketch
  @override
  final Sketch sketch;

  /// The draw mode that is currently active
  @override
  @JsonKey()
  final DrawMode drawMode;

  /// The drawing that is currently being drawn
  @override
  final SketchDrawing? activeDrawing;

  /// Which pointers are allowed for drawing and will be captured by the
  /// scribble widget.
  @override
  @JsonKey()
  final ScribblePointerMode allowedPointersMode;

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  final List<int> _activePointerIds;

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  @override
  @JsonKey()
  List<int> get activePointerIds {
    if (_activePointerIds is EqualUnmodifiableListView)
      return _activePointerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activePointerIds);
  }

  /// The current position of the pointer
  @override
  final Point? pointerPosition;

  /// The color that is currently being drawn with
  @override
  @JsonKey()
  final int selectedColor;

  /// The current width of the pen
  @override
  @JsonKey()
  final double selectedWidth;

  /// {@template view.state.scribble_state.scale_factor}
  /// How much the widget is scaled at the moment.
  ///
  /// Can be used if zoom functionality is needed
  /// (e.g. through InteractiveViewer) so that the pen width remains the same.
  /// {@endtemplate}
  @override
  @JsonKey()
  final double scaleFactor;

  /// {@template view.state.scribble_state.simplification_tolerance}
  /// The current tolerance of simplification, in pixels.
  ///
  /// Lines will be simplified when they are finished. A value of 0 (default)
  /// will mean no simplification.
  /// {@endtemplate}
  @override
  @JsonKey()
  final double simplificationTolerance;

  /// The currently selected tool
  @override
  @JsonKey()
  final Tool selectedTool;

  /// The currently selected polygon
  @override
  final PolygonTemplate? selectedPolygon;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScribbleState.drawing(sketch: $sketch, drawMode: $drawMode, activeDrawing: $activeDrawing, allowedPointersMode: $allowedPointersMode, activePointerIds: $activePointerIds, pointerPosition: $pointerPosition, selectedColor: $selectedColor, selectedWidth: $selectedWidth, scaleFactor: $scaleFactor, simplificationTolerance: $simplificationTolerance, selectedTool: $selectedTool, selectedPolygon: $selectedPolygon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingImpl &&
            (identical(other.sketch, sketch) || other.sketch == sketch) &&
            (identical(other.drawMode, drawMode) ||
                other.drawMode == drawMode) &&
            (identical(other.activeDrawing, activeDrawing) ||
                other.activeDrawing == activeDrawing) &&
            (identical(other.allowedPointersMode, allowedPointersMode) ||
                other.allowedPointersMode == allowedPointersMode) &&
            const DeepCollectionEquality()
                .equals(other._activePointerIds, _activePointerIds) &&
            (identical(other.pointerPosition, pointerPosition) ||
                other.pointerPosition == pointerPosition) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.selectedWidth, selectedWidth) ||
                other.selectedWidth == selectedWidth) &&
            (identical(other.scaleFactor, scaleFactor) ||
                other.scaleFactor == scaleFactor) &&
            (identical(
                    other.simplificationTolerance, simplificationTolerance) ||
                other.simplificationTolerance == simplificationTolerance) &&
            (identical(other.selectedTool, selectedTool) ||
                other.selectedTool == selectedTool) &&
            (identical(other.selectedPolygon, selectedPolygon) ||
                other.selectedPolygon == selectedPolygon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sketch,
      drawMode,
      activeDrawing,
      allowedPointersMode,
      const DeepCollectionEquality().hash(_activePointerIds),
      pointerPosition,
      selectedColor,
      selectedWidth,
      scaleFactor,
      simplificationTolerance,
      selectedTool,
      selectedPolygon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawingImplCopyWith<_$DrawingImpl> get copyWith =>
      __$$DrawingImplCopyWithImpl<_$DrawingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)
        drawing,
    required TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)
        erasing,
  }) {
    return drawing(
        sketch,
        drawMode,
        activeDrawing,
        allowedPointersMode,
        activePointerIds,
        pointerPosition,
        selectedColor,
        selectedWidth,
        scaleFactor,
        simplificationTolerance,
        selectedTool,
        selectedPolygon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        drawing,
    TResult? Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        erasing,
  }) {
    return drawing?.call(
        sketch,
        drawMode,
        activeDrawing,
        allowedPointersMode,
        activePointerIds,
        pointerPosition,
        selectedColor,
        selectedWidth,
        scaleFactor,
        simplificationTolerance,
        selectedTool,
        selectedPolygon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        drawing,
    TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        erasing,
    required TResult orElse(),
  }) {
    if (drawing != null) {
      return drawing(
          sketch,
          drawMode,
          activeDrawing,
          allowedPointersMode,
          activePointerIds,
          pointerPosition,
          selectedColor,
          selectedWidth,
          scaleFactor,
          simplificationTolerance,
          selectedTool,
          selectedPolygon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Drawing value) drawing,
    required TResult Function(Erasing value) erasing,
  }) {
    return drawing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Drawing value)? drawing,
    TResult? Function(Erasing value)? erasing,
  }) {
    return drawing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Drawing value)? drawing,
    TResult Function(Erasing value)? erasing,
    required TResult orElse(),
  }) {
    if (drawing != null) {
      return drawing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DrawingImplToJson(
      this,
    );
  }
}

abstract class Drawing extends ScribbleState {
  const factory Drawing(
      {required final Sketch sketch,
      final DrawMode drawMode,
      final SketchDrawing? activeDrawing,
      final ScribblePointerMode allowedPointersMode,
      final List<int> activePointerIds,
      final Point? pointerPosition,
      final int selectedColor,
      final double selectedWidth,
      final double scaleFactor,
      final double simplificationTolerance,
      final Tool selectedTool,
      final PolygonTemplate? selectedPolygon}) = _$DrawingImpl;
  const Drawing._() : super._();

  factory Drawing.fromJson(Map<String, dynamic> json) = _$DrawingImpl.fromJson;

  @override

  /// The current state of the sketch
  Sketch get sketch;
  @override

  /// The draw mode that is currently active
  DrawMode get drawMode;

  /// The drawing that is currently being drawn
  SketchDrawing? get activeDrawing;
  @override

  /// Which pointers are allowed for drawing and will be captured by the
  /// scribble widget.
  ScribblePointerMode get allowedPointersMode;
  @override

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  List<int> get activePointerIds;
  @override

  /// The current position of the pointer
  Point? get pointerPosition;

  /// The color that is currently being drawn with
  int get selectedColor;
  @override

  /// The current width of the pen
  double get selectedWidth;
  @override

  /// {@template view.state.scribble_state.scale_factor}
  /// How much the widget is scaled at the moment.
  ///
  /// Can be used if zoom functionality is needed
  /// (e.g. through InteractiveViewer) so that the pen width remains the same.
  /// {@endtemplate}
  double get scaleFactor;
  @override

  /// {@template view.state.scribble_state.simplification_tolerance}
  /// The current tolerance of simplification, in pixels.
  ///
  /// Lines will be simplified when they are finished. A value of 0 (default)
  /// will mean no simplification.
  /// {@endtemplate}
  double get simplificationTolerance;
  @override

  /// The currently selected tool
  Tool get selectedTool;
  @override

  /// The currently selected polygon
  PolygonTemplate? get selectedPolygon;
  @override
  @JsonKey(ignore: true)
  _$$DrawingImplCopyWith<_$DrawingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErasingImplCopyWith<$Res>
    implements $ScribbleStateCopyWith<$Res> {
  factory _$$ErasingImplCopyWith(
          _$ErasingImpl value, $Res Function(_$ErasingImpl) then) =
      __$$ErasingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sketch sketch,
      DrawMode drawMode,
      ScribblePointerMode allowedPointersMode,
      List<int> activePointerIds,
      Point? pointerPosition,
      double selectedWidth,
      double scaleFactor,
      double simplificationTolerance,
      Tool selectedTool,
      PolygonTemplate? selectedPolygon});

  @override
  $SketchCopyWith<$Res> get sketch;
  @override
  $PointCopyWith<$Res>? get pointerPosition;
  @override
  $PolygonTemplateCopyWith<$Res>? get selectedPolygon;
}

/// @nodoc
class __$$ErasingImplCopyWithImpl<$Res>
    extends _$ScribbleStateCopyWithImpl<$Res, _$ErasingImpl>
    implements _$$ErasingImplCopyWith<$Res> {
  __$$ErasingImplCopyWithImpl(
      _$ErasingImpl _value, $Res Function(_$ErasingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sketch = null,
    Object? drawMode = null,
    Object? allowedPointersMode = null,
    Object? activePointerIds = null,
    Object? pointerPosition = freezed,
    Object? selectedWidth = null,
    Object? scaleFactor = null,
    Object? simplificationTolerance = null,
    Object? selectedTool = null,
    Object? selectedPolygon = freezed,
  }) {
    return _then(_$ErasingImpl(
      sketch: null == sketch
          ? _value.sketch
          : sketch // ignore: cast_nullable_to_non_nullable
              as Sketch,
      drawMode: null == drawMode
          ? _value.drawMode
          : drawMode // ignore: cast_nullable_to_non_nullable
              as DrawMode,
      allowedPointersMode: null == allowedPointersMode
          ? _value.allowedPointersMode
          : allowedPointersMode // ignore: cast_nullable_to_non_nullable
              as ScribblePointerMode,
      activePointerIds: null == activePointerIds
          ? _value._activePointerIds
          : activePointerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pointerPosition: freezed == pointerPosition
          ? _value.pointerPosition
          : pointerPosition // ignore: cast_nullable_to_non_nullable
              as Point?,
      selectedWidth: null == selectedWidth
          ? _value.selectedWidth
          : selectedWidth // ignore: cast_nullable_to_non_nullable
              as double,
      scaleFactor: null == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      simplificationTolerance: null == simplificationTolerance
          ? _value.simplificationTolerance
          : simplificationTolerance // ignore: cast_nullable_to_non_nullable
              as double,
      selectedTool: null == selectedTool
          ? _value.selectedTool
          : selectedTool // ignore: cast_nullable_to_non_nullable
              as Tool,
      selectedPolygon: freezed == selectedPolygon
          ? _value.selectedPolygon
          : selectedPolygon // ignore: cast_nullable_to_non_nullable
              as PolygonTemplate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErasingImpl extends Erasing {
  const _$ErasingImpl(
      {required this.sketch,
      this.drawMode = DrawMode.free,
      this.allowedPointersMode = ScribblePointerMode.all,
      final List<int> activePointerIds = const [],
      this.pointerPosition,
      this.selectedWidth = 5,
      this.scaleFactor = 1,
      this.simplificationTolerance = 0,
      this.selectedTool = Tool.pen,
      this.selectedPolygon,
      final String? $type})
      : _activePointerIds = activePointerIds,
        $type = $type ?? 'erasing',
        super._();

  factory _$ErasingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErasingImplFromJson(json);

  /// The current state of the sketch
  @override
  final Sketch sketch;

  /// The draw mode that is currently active
  @override
  @JsonKey()
  final DrawMode drawMode;

  /// Which pointers are allowed for drawing and will be captured by the
  /// scribble widget.
  @override
  @JsonKey()
  final ScribblePointerMode allowedPointersMode;

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  final List<int> _activePointerIds;

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  @override
  @JsonKey()
  List<int> get activePointerIds {
    if (_activePointerIds is EqualUnmodifiableListView)
      return _activePointerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activePointerIds);
  }

  /// The current position of the pointer
  @override
  final Point? pointerPosition;

  /// The current width of the pen
  @override
  @JsonKey()
  final double selectedWidth;

  /// How much the widget is scaled at the moment.
  ///
  /// Can be used if zoom functionality is needed
  /// (e.g. through InteractiveViewer) so that the pen width remains the same.
  @override
  @JsonKey()
  final double scaleFactor;

  /// The current tolerance of simplification, in pixels.
  ///
  /// Lines will be simplified when they are finished. A value of 0 (default)
  /// will mean no simplification.
  @override
  @JsonKey()
  final double simplificationTolerance;

  /// The currently selected tool
  @override
  @JsonKey()
  final Tool selectedTool;

  /// The currently selected polygon
  @override
  final PolygonTemplate? selectedPolygon;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScribbleState.erasing(sketch: $sketch, drawMode: $drawMode, allowedPointersMode: $allowedPointersMode, activePointerIds: $activePointerIds, pointerPosition: $pointerPosition, selectedWidth: $selectedWidth, scaleFactor: $scaleFactor, simplificationTolerance: $simplificationTolerance, selectedTool: $selectedTool, selectedPolygon: $selectedPolygon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErasingImpl &&
            (identical(other.sketch, sketch) || other.sketch == sketch) &&
            (identical(other.drawMode, drawMode) ||
                other.drawMode == drawMode) &&
            (identical(other.allowedPointersMode, allowedPointersMode) ||
                other.allowedPointersMode == allowedPointersMode) &&
            const DeepCollectionEquality()
                .equals(other._activePointerIds, _activePointerIds) &&
            (identical(other.pointerPosition, pointerPosition) ||
                other.pointerPosition == pointerPosition) &&
            (identical(other.selectedWidth, selectedWidth) ||
                other.selectedWidth == selectedWidth) &&
            (identical(other.scaleFactor, scaleFactor) ||
                other.scaleFactor == scaleFactor) &&
            (identical(
                    other.simplificationTolerance, simplificationTolerance) ||
                other.simplificationTolerance == simplificationTolerance) &&
            (identical(other.selectedTool, selectedTool) ||
                other.selectedTool == selectedTool) &&
            (identical(other.selectedPolygon, selectedPolygon) ||
                other.selectedPolygon == selectedPolygon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sketch,
      drawMode,
      allowedPointersMode,
      const DeepCollectionEquality().hash(_activePointerIds),
      pointerPosition,
      selectedWidth,
      scaleFactor,
      simplificationTolerance,
      selectedTool,
      selectedPolygon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErasingImplCopyWith<_$ErasingImpl> get copyWith =>
      __$$ErasingImplCopyWithImpl<_$ErasingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)
        drawing,
    required TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)
        erasing,
  }) {
    return erasing(
        sketch,
        drawMode,
        allowedPointersMode,
        activePointerIds,
        pointerPosition,
        selectedWidth,
        scaleFactor,
        simplificationTolerance,
        selectedTool,
        selectedPolygon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        drawing,
    TResult? Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        erasing,
  }) {
    return erasing?.call(
        sketch,
        drawMode,
        allowedPointersMode,
        activePointerIds,
        pointerPosition,
        selectedWidth,
        scaleFactor,
        simplificationTolerance,
        selectedTool,
        selectedPolygon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            SketchDrawing? activeDrawing,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            int selectedColor,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        drawing,
    TResult Function(
            Sketch sketch,
            DrawMode drawMode,
            ScribblePointerMode allowedPointersMode,
            List<int> activePointerIds,
            Point? pointerPosition,
            double selectedWidth,
            double scaleFactor,
            double simplificationTolerance,
            Tool selectedTool,
            PolygonTemplate? selectedPolygon)?
        erasing,
    required TResult orElse(),
  }) {
    if (erasing != null) {
      return erasing(
          sketch,
          drawMode,
          allowedPointersMode,
          activePointerIds,
          pointerPosition,
          selectedWidth,
          scaleFactor,
          simplificationTolerance,
          selectedTool,
          selectedPolygon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Drawing value) drawing,
    required TResult Function(Erasing value) erasing,
  }) {
    return erasing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Drawing value)? drawing,
    TResult? Function(Erasing value)? erasing,
  }) {
    return erasing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Drawing value)? drawing,
    TResult Function(Erasing value)? erasing,
    required TResult orElse(),
  }) {
    if (erasing != null) {
      return erasing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErasingImplToJson(
      this,
    );
  }
}

abstract class Erasing extends ScribbleState {
  const factory Erasing(
      {required final Sketch sketch,
      final DrawMode drawMode,
      final ScribblePointerMode allowedPointersMode,
      final List<int> activePointerIds,
      final Point? pointerPosition,
      final double selectedWidth,
      final double scaleFactor,
      final double simplificationTolerance,
      final Tool selectedTool,
      final PolygonTemplate? selectedPolygon}) = _$ErasingImpl;
  const Erasing._() : super._();

  factory Erasing.fromJson(Map<String, dynamic> json) = _$ErasingImpl.fromJson;

  @override

  /// The current state of the sketch
  Sketch get sketch;
  @override

  /// The draw mode that is currently active
  DrawMode get drawMode;
  @override

  /// Which pointers are allowed for drawing and will be captured by the
  /// scribble widget.
  ScribblePointerMode get allowedPointersMode;
  @override

  /// The ids of all supported pointers that are currently interacting with
  /// the widget.
  List<int> get activePointerIds;
  @override

  /// The current position of the pointer
  Point? get pointerPosition;
  @override

  /// The current width of the pen
  double get selectedWidth;
  @override

  /// How much the widget is scaled at the moment.
  ///
  /// Can be used if zoom functionality is needed
  /// (e.g. through InteractiveViewer) so that the pen width remains the same.
  double get scaleFactor;
  @override

  /// The current tolerance of simplification, in pixels.
  ///
  /// Lines will be simplified when they are finished. A value of 0 (default)
  /// will mean no simplification.
  double get simplificationTolerance;
  @override

  /// The currently selected tool
  Tool get selectedTool;
  @override

  /// The currently selected polygon
  PolygonTemplate? get selectedPolygon;
  @override
  @JsonKey(ignore: true)
  _$$ErasingImplCopyWith<_$ErasingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
