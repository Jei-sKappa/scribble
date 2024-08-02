// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sketch_drawing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SketchDrawing _$SketchDrawingFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'free':
      return FreeSketchDrawing.fromJson(json);
    case 'line':
      return LineSketchDrawing.fromJson(json);
    case 'shape':
      return ShapeSketchDrawing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SketchDrawing',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SketchDrawing {
  /// The id of the drawing
  Object get id => throw _privateConstructorUsedError;

  /// The color of the line in hexadecimal format (ARGB)
  int get color => throw _privateConstructorUsedError;

  /// The width of the line
  double get width => throw _privateConstructorUsedError;

  /// The tool used to draw the line
  Tool get tool => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)
        free,
    required TResult Function(Object id, Point anchorPoint, Point endPoint,
            int color, double width, Tool tool)
        line,
    required TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)
        shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult? Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult? Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FreeSketchDrawing value) free,
    required TResult Function(LineSketchDrawing value) line,
    required TResult Function(ShapeSketchDrawing value) shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FreeSketchDrawing value)? free,
    TResult? Function(LineSketchDrawing value)? line,
    TResult? Function(ShapeSketchDrawing value)? shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FreeSketchDrawing value)? free,
    TResult Function(LineSketchDrawing value)? line,
    TResult Function(ShapeSketchDrawing value)? shape,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SketchDrawingCopyWith<SketchDrawing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SketchDrawingCopyWith<$Res> {
  factory $SketchDrawingCopyWith(
          SketchDrawing value, $Res Function(SketchDrawing) then) =
      _$SketchDrawingCopyWithImpl<$Res, SketchDrawing>;
  @useResult
  $Res call({Object id, int color, double width, Tool tool});
}

/// @nodoc
class _$SketchDrawingCopyWithImpl<$Res, $Val extends SketchDrawing>
    implements $SketchDrawingCopyWith<$Res> {
  _$SketchDrawingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? width = null,
    Object? tool = null,
  }) {
    return _then(_value.copyWith(
      id: null == id ? _value.id : id,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      tool: null == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as Tool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeSketchDrawingImplCopyWith<$Res>
    implements $SketchDrawingCopyWith<$Res> {
  factory _$$FreeSketchDrawingImplCopyWith(_$FreeSketchDrawingImpl value,
          $Res Function(_$FreeSketchDrawingImpl) then) =
      __$$FreeSketchDrawingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object id, List<Point> points, int color, double width, Tool tool});
}

/// @nodoc
class __$$FreeSketchDrawingImplCopyWithImpl<$Res>
    extends _$SketchDrawingCopyWithImpl<$Res, _$FreeSketchDrawingImpl>
    implements _$$FreeSketchDrawingImplCopyWith<$Res> {
  __$$FreeSketchDrawingImplCopyWithImpl(_$FreeSketchDrawingImpl _value,
      $Res Function(_$FreeSketchDrawingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
    Object? color = null,
    Object? width = null,
    Object? tool = null,
  }) {
    return _then(_$FreeSketchDrawingImpl(
      id: null == id ? _value.id : id,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      tool: null == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as Tool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeSketchDrawingImpl extends FreeSketchDrawing {
  const _$FreeSketchDrawingImpl(
      {required this.id,
      required final List<Point> points,
      required this.color,
      required this.width,
      this.tool = Tool.pen,
      final String? $type})
      : _points = points,
        $type = $type ?? 'free',
        super._();

  factory _$FreeSketchDrawingImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeSketchDrawingImplFromJson(json);

  /// The id of the drawing
  @override
  final Object id;

  /// The line that is currently being drawn
  final List<Point> _points;

  /// The line that is currently being drawn
  @override
  List<Point> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  /// The color of the line in hexadecimal format (ARGB)
  @override
  final int color;

  /// The width of the line
  @override
  final double width;

  /// The tool used to draw the line
  @override
  @JsonKey()
  final Tool tool;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SketchDrawing.free(id: $id, points: $points, color: $color, width: $width, tool: $tool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeSketchDrawingImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.tool, tool) || other.tool == tool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_points),
      color,
      width,
      tool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeSketchDrawingImplCopyWith<_$FreeSketchDrawingImpl> get copyWith =>
      __$$FreeSketchDrawingImplCopyWithImpl<_$FreeSketchDrawingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)
        free,
    required TResult Function(Object id, Point anchorPoint, Point endPoint,
            int color, double width, Tool tool)
        line,
    required TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)
        shape,
  }) {
    return free(id, points, color, width, tool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult? Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult? Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
  }) {
    return free?.call(id, points, color, width, tool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
    required TResult orElse(),
  }) {
    if (free != null) {
      return free(id, points, color, width, tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FreeSketchDrawing value) free,
    required TResult Function(LineSketchDrawing value) line,
    required TResult Function(ShapeSketchDrawing value) shape,
  }) {
    return free(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FreeSketchDrawing value)? free,
    TResult? Function(LineSketchDrawing value)? line,
    TResult? Function(ShapeSketchDrawing value)? shape,
  }) {
    return free?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FreeSketchDrawing value)? free,
    TResult Function(LineSketchDrawing value)? line,
    TResult Function(ShapeSketchDrawing value)? shape,
    required TResult orElse(),
  }) {
    if (free != null) {
      return free(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeSketchDrawingImplToJson(
      this,
    );
  }
}

abstract class FreeSketchDrawing extends SketchDrawing {
  const factory FreeSketchDrawing(
      {required final Object id,
      required final List<Point> points,
      required final int color,
      required final double width,
      final Tool tool}) = _$FreeSketchDrawingImpl;
  const FreeSketchDrawing._() : super._();

  factory FreeSketchDrawing.fromJson(Map<String, dynamic> json) =
      _$FreeSketchDrawingImpl.fromJson;

  @override

  /// The id of the drawing
  Object get id;

  /// The line that is currently being drawn
  List<Point> get points;
  @override

  /// The color of the line in hexadecimal format (ARGB)
  int get color;
  @override

  /// The width of the line
  double get width;
  @override

  /// The tool used to draw the line
  Tool get tool;
  @override
  @JsonKey(ignore: true)
  _$$FreeSketchDrawingImplCopyWith<_$FreeSketchDrawingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LineSketchDrawingImplCopyWith<$Res>
    implements $SketchDrawingCopyWith<$Res> {
  factory _$$LineSketchDrawingImplCopyWith(_$LineSketchDrawingImpl value,
          $Res Function(_$LineSketchDrawingImpl) then) =
      __$$LineSketchDrawingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object id,
      Point anchorPoint,
      Point endPoint,
      int color,
      double width,
      Tool tool});

  $PointCopyWith<$Res> get anchorPoint;
  $PointCopyWith<$Res> get endPoint;
}

/// @nodoc
class __$$LineSketchDrawingImplCopyWithImpl<$Res>
    extends _$SketchDrawingCopyWithImpl<$Res, _$LineSketchDrawingImpl>
    implements _$$LineSketchDrawingImplCopyWith<$Res> {
  __$$LineSketchDrawingImplCopyWithImpl(_$LineSketchDrawingImpl _value,
      $Res Function(_$LineSketchDrawingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? anchorPoint = null,
    Object? endPoint = null,
    Object? color = null,
    Object? width = null,
    Object? tool = null,
  }) {
    return _then(_$LineSketchDrawingImpl(
      id: null == id ? _value.id : id,
      anchorPoint: null == anchorPoint
          ? _value.anchorPoint
          : anchorPoint // ignore: cast_nullable_to_non_nullable
              as Point,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as Point,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      tool: null == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as Tool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get anchorPoint {
    return $PointCopyWith<$Res>(_value.anchorPoint, (value) {
      return _then(_value.copyWith(anchorPoint: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get endPoint {
    return $PointCopyWith<$Res>(_value.endPoint, (value) {
      return _then(_value.copyWith(endPoint: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LineSketchDrawingImpl extends LineSketchDrawing {
  const _$LineSketchDrawingImpl(
      {required this.id,
      required this.anchorPoint,
      required this.endPoint,
      required this.color,
      required this.width,
      this.tool = Tool.pen,
      final String? $type})
      : $type = $type ?? 'line',
        super._();

  factory _$LineSketchDrawingImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineSketchDrawingImplFromJson(json);

  /// The id of the drawing
  @override
  final Object id;

  /// The starting point of the line
  @override
  final Point anchorPoint;

  /// The end point of the line
  @override
  final Point endPoint;

  /// The color of the line in hexadecimal format (ARGB)
  @override
  final int color;

  /// The width of the line
  @override
  final double width;

  /// The tool used to draw the line
  @override
  @JsonKey()
  final Tool tool;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SketchDrawing.line(id: $id, anchorPoint: $anchorPoint, endPoint: $endPoint, color: $color, width: $width, tool: $tool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineSketchDrawingImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.anchorPoint, anchorPoint) ||
                other.anchorPoint == anchorPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.tool, tool) || other.tool == tool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      anchorPoint,
      endPoint,
      color,
      width,
      tool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LineSketchDrawingImplCopyWith<_$LineSketchDrawingImpl> get copyWith =>
      __$$LineSketchDrawingImplCopyWithImpl<_$LineSketchDrawingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)
        free,
    required TResult Function(Object id, Point anchorPoint, Point endPoint,
            int color, double width, Tool tool)
        line,
    required TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)
        shape,
  }) {
    return line(id, anchorPoint, endPoint, color, width, tool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult? Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult? Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
  }) {
    return line?.call(id, anchorPoint, endPoint, color, width, tool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(id, anchorPoint, endPoint, color, width, tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FreeSketchDrawing value) free,
    required TResult Function(LineSketchDrawing value) line,
    required TResult Function(ShapeSketchDrawing value) shape,
  }) {
    return line(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FreeSketchDrawing value)? free,
    TResult? Function(LineSketchDrawing value)? line,
    TResult? Function(ShapeSketchDrawing value)? shape,
  }) {
    return line?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FreeSketchDrawing value)? free,
    TResult Function(LineSketchDrawing value)? line,
    TResult Function(ShapeSketchDrawing value)? shape,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LineSketchDrawingImplToJson(
      this,
    );
  }
}

abstract class LineSketchDrawing extends SketchDrawing {
  const factory LineSketchDrawing(
      {required final Object id,
      required final Point anchorPoint,
      required final Point endPoint,
      required final int color,
      required final double width,
      final Tool tool}) = _$LineSketchDrawingImpl;
  const LineSketchDrawing._() : super._();

  factory LineSketchDrawing.fromJson(Map<String, dynamic> json) =
      _$LineSketchDrawingImpl.fromJson;

  @override

  /// The id of the drawing
  Object get id;

  /// The starting point of the line
  Point get anchorPoint;

  /// The end point of the line
  Point get endPoint;
  @override

  /// The color of the line in hexadecimal format (ARGB)
  int get color;
  @override

  /// The width of the line
  double get width;
  @override

  /// The tool used to draw the line
  Tool get tool;
  @override
  @JsonKey(ignore: true)
  _$$LineSketchDrawingImplCopyWith<_$LineSketchDrawingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShapeSketchDrawingImplCopyWith<$Res>
    implements $SketchDrawingCopyWith<$Res> {
  factory _$$ShapeSketchDrawingImplCopyWith(_$ShapeSketchDrawingImpl value,
          $Res Function(_$ShapeSketchDrawingImpl) then) =
      __$$ShapeSketchDrawingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object id,
      Point anchorPoint,
      Point endPoint,
      ShapeTemplate shapeTemplate,
      bool isFilled,
      int color,
      double width,
      Tool tool});

  $PointCopyWith<$Res> get anchorPoint;
  $PointCopyWith<$Res> get endPoint;
  $ShapeTemplateCopyWith<$Res> get shapeTemplate;
}

/// @nodoc
class __$$ShapeSketchDrawingImplCopyWithImpl<$Res>
    extends _$SketchDrawingCopyWithImpl<$Res, _$ShapeSketchDrawingImpl>
    implements _$$ShapeSketchDrawingImplCopyWith<$Res> {
  __$$ShapeSketchDrawingImplCopyWithImpl(_$ShapeSketchDrawingImpl _value,
      $Res Function(_$ShapeSketchDrawingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? anchorPoint = null,
    Object? endPoint = null,
    Object? shapeTemplate = null,
    Object? isFilled = null,
    Object? color = null,
    Object? width = null,
    Object? tool = null,
  }) {
    return _then(_$ShapeSketchDrawingImpl(
      id: null == id ? _value.id : id,
      anchorPoint: null == anchorPoint
          ? _value.anchorPoint
          : anchorPoint // ignore: cast_nullable_to_non_nullable
              as Point,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as Point,
      shapeTemplate: null == shapeTemplate
          ? _value.shapeTemplate
          : shapeTemplate // ignore: cast_nullable_to_non_nullable
              as ShapeTemplate,
      isFilled: null == isFilled
          ? _value.isFilled
          : isFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      tool: null == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as Tool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get anchorPoint {
    return $PointCopyWith<$Res>(_value.anchorPoint, (value) {
      return _then(_value.copyWith(anchorPoint: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get endPoint {
    return $PointCopyWith<$Res>(_value.endPoint, (value) {
      return _then(_value.copyWith(endPoint: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShapeTemplateCopyWith<$Res> get shapeTemplate {
    return $ShapeTemplateCopyWith<$Res>(_value.shapeTemplate, (value) {
      return _then(_value.copyWith(shapeTemplate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ShapeSketchDrawingImpl extends ShapeSketchDrawing {
  const _$ShapeSketchDrawingImpl(
      {required this.id,
      required this.anchorPoint,
      required this.endPoint,
      required this.shapeTemplate,
      required this.isFilled,
      required this.color,
      required this.width,
      this.tool = Tool.pen,
      final String? $type})
      : $type = $type ?? 'shape',
        super._();

  factory _$ShapeSketchDrawingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShapeSketchDrawingImplFromJson(json);

  /// The id of the drawing
  @override
  final Object id;

  /// The starting point of the shape
  @override
  final Point anchorPoint;

  /// The end point of the shape
  @override
  final Point endPoint;

  /// The shape template used to draw the shape
  @override
  final ShapeTemplate shapeTemplate;

  /// Whether the shape is filled or not
  @override
  final bool isFilled;

  /// The color of the line in hexadecimal format (ARGB)
  @override
  final int color;

  /// The width of the line
  @override
  final double width;

  /// The tool used to draw the line
  @override
  @JsonKey()
  final Tool tool;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SketchDrawing.shape(id: $id, anchorPoint: $anchorPoint, endPoint: $endPoint, shapeTemplate: $shapeTemplate, isFilled: $isFilled, color: $color, width: $width, tool: $tool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShapeSketchDrawingImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.anchorPoint, anchorPoint) ||
                other.anchorPoint == anchorPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.shapeTemplate, shapeTemplate) ||
                other.shapeTemplate == shapeTemplate) &&
            (identical(other.isFilled, isFilled) ||
                other.isFilled == isFilled) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.tool, tool) || other.tool == tool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      anchorPoint,
      endPoint,
      shapeTemplate,
      isFilled,
      color,
      width,
      tool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShapeSketchDrawingImplCopyWith<_$ShapeSketchDrawingImpl> get copyWith =>
      __$$ShapeSketchDrawingImplCopyWithImpl<_$ShapeSketchDrawingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)
        free,
    required TResult Function(Object id, Point anchorPoint, Point endPoint,
            int color, double width, Tool tool)
        line,
    required TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)
        shape,
  }) {
    return shape(
        id, anchorPoint, endPoint, shapeTemplate, isFilled, color, width, tool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult? Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult? Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
  }) {
    return shape?.call(
        id, anchorPoint, endPoint, shapeTemplate, isFilled, color, width, tool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Object id, List<Point> points, int color, double width, Tool tool)?
        free,
    TResult Function(Object id, Point anchorPoint, Point endPoint, int color,
            double width, Tool tool)?
        line,
    TResult Function(
            Object id,
            Point anchorPoint,
            Point endPoint,
            ShapeTemplate shapeTemplate,
            bool isFilled,
            int color,
            double width,
            Tool tool)?
        shape,
    required TResult orElse(),
  }) {
    if (shape != null) {
      return shape(id, anchorPoint, endPoint, shapeTemplate, isFilled, color,
          width, tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FreeSketchDrawing value) free,
    required TResult Function(LineSketchDrawing value) line,
    required TResult Function(ShapeSketchDrawing value) shape,
  }) {
    return shape(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FreeSketchDrawing value)? free,
    TResult? Function(LineSketchDrawing value)? line,
    TResult? Function(ShapeSketchDrawing value)? shape,
  }) {
    return shape?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FreeSketchDrawing value)? free,
    TResult Function(LineSketchDrawing value)? line,
    TResult Function(ShapeSketchDrawing value)? shape,
    required TResult orElse(),
  }) {
    if (shape != null) {
      return shape(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShapeSketchDrawingImplToJson(
      this,
    );
  }
}

abstract class ShapeSketchDrawing extends SketchDrawing {
  const factory ShapeSketchDrawing(
      {required final Object id,
      required final Point anchorPoint,
      required final Point endPoint,
      required final ShapeTemplate shapeTemplate,
      required final bool isFilled,
      required final int color,
      required final double width,
      final Tool tool}) = _$ShapeSketchDrawingImpl;
  const ShapeSketchDrawing._() : super._();

  factory ShapeSketchDrawing.fromJson(Map<String, dynamic> json) =
      _$ShapeSketchDrawingImpl.fromJson;

  @override

  /// The id of the drawing
  Object get id;

  /// The starting point of the shape
  Point get anchorPoint;

  /// The end point of the shape
  Point get endPoint;

  /// The shape template used to draw the shape
  ShapeTemplate get shapeTemplate;

  /// Whether the shape is filled or not
  bool get isFilled;
  @override

  /// The color of the line in hexadecimal format (ARGB)
  int get color;
  @override

  /// The width of the line
  double get width;
  @override

  /// The tool used to draw the line
  Tool get tool;
  @override
  @JsonKey(ignore: true)
  _$$ShapeSketchDrawingImplCopyWith<_$ShapeSketchDrawingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
