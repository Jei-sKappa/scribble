// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sketch_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SketchLine _$SketchLineFromJson(Map<String, dynamic> json) {
  return _SketchLine.fromJson(json);
}

/// @nodoc
mixin _$SketchLine {
  /// The points that make up the line
  List<Point> get points => throw _privateConstructorUsedError;

  /// The color of the line in hexadecimal format (ARGB)
  int get color => throw _privateConstructorUsedError;

  /// The width of the line
  double get width => throw _privateConstructorUsedError;

  /// The tool used to draw the line
  Tool get tool => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SketchLineCopyWith<SketchLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SketchLineCopyWith<$Res> {
  factory $SketchLineCopyWith(
          SketchLine value, $Res Function(SketchLine) then) =
      _$SketchLineCopyWithImpl<$Res, SketchLine>;
  @useResult
  $Res call({List<Point> points, int color, double width, Tool tool});
}

/// @nodoc
class _$SketchLineCopyWithImpl<$Res, $Val extends SketchLine>
    implements $SketchLineCopyWith<$Res> {
  _$SketchLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? width = null,
    Object? tool = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SketchLineImplCopyWith<$Res>
    implements $SketchLineCopyWith<$Res> {
  factory _$$SketchLineImplCopyWith(
          _$SketchLineImpl value, $Res Function(_$SketchLineImpl) then) =
      __$$SketchLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Point> points, int color, double width, Tool tool});
}

/// @nodoc
class __$$SketchLineImplCopyWithImpl<$Res>
    extends _$SketchLineCopyWithImpl<$Res, _$SketchLineImpl>
    implements _$$SketchLineImplCopyWith<$Res> {
  __$$SketchLineImplCopyWithImpl(
      _$SketchLineImpl _value, $Res Function(_$SketchLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? width = null,
    Object? tool = null,
  }) {
    return _then(_$SketchLineImpl(
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
class _$SketchLineImpl implements _SketchLine {
  const _$SketchLineImpl(
      {required final List<Point> points,
      required this.color,
      required this.width,
      this.tool = Tool.pen})
      : _points = points;

  factory _$SketchLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$SketchLineImplFromJson(json);

  /// The points that make up the line
  final List<Point> _points;

  /// The points that make up the line
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

  @override
  String toString() {
    return 'SketchLine(points: $points, color: $color, width: $width, tool: $tool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SketchLineImpl &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.tool, tool) || other.tool == tool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_points), color, width, tool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SketchLineImplCopyWith<_$SketchLineImpl> get copyWith =>
      __$$SketchLineImplCopyWithImpl<_$SketchLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SketchLineImplToJson(
      this,
    );
  }
}

abstract class _SketchLine implements SketchLine {
  const factory _SketchLine(
      {required final List<Point> points,
      required final int color,
      required final double width,
      final Tool tool}) = _$SketchLineImpl;

  factory _SketchLine.fromJson(Map<String, dynamic> json) =
      _$SketchLineImpl.fromJson;

  @override

  /// The points that make up the line
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
  _$$SketchLineImplCopyWith<_$SketchLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
