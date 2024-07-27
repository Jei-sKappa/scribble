// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shape_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShapeTemplate _$ShapeTemplateFromJson(Map<String, dynamic> json) {
  return _ShapeTemplate.fromJson(json);
}

/// @nodoc
mixin _$ShapeTemplate {
  /// The points representing the vertices of the shape.
  List<Point> get vertices => throw _privateConstructorUsedError;

  /// Whether the aspect ratio should be maintained when scaling the shape.
  bool get maintainAspectRatio => throw _privateConstructorUsedError;

  /// The details of the shape template.
  /// It contains the size and bounds of the shape.
  ///
  /// If a [ShapeTemplateDetails] is not provided, the size and bounds will be
  /// calculated based on the vertices every time the shape is drawn. To
  /// improve performance, it is recommended to provide the size and bounds
  /// manually.
  ShapeTemplateDetails? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShapeTemplateCopyWith<ShapeTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShapeTemplateCopyWith<$Res> {
  factory $ShapeTemplateCopyWith(
          ShapeTemplate value, $Res Function(ShapeTemplate) then) =
      _$ShapeTemplateCopyWithImpl<$Res, ShapeTemplate>;
  @useResult
  $Res call(
      {List<Point> vertices,
      bool maintainAspectRatio,
      ShapeTemplateDetails? details});

  $ShapeTemplateDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$ShapeTemplateCopyWithImpl<$Res, $Val extends ShapeTemplate>
    implements $ShapeTemplateCopyWith<$Res> {
  _$ShapeTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
    Object? maintainAspectRatio = null,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      vertices: null == vertices
          ? _value.vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      maintainAspectRatio: null == maintainAspectRatio
          ? _value.maintainAspectRatio
          : maintainAspectRatio // ignore: cast_nullable_to_non_nullable
              as bool,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ShapeTemplateDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShapeTemplateDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ShapeTemplateDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShapeTemplateImplCopyWith<$Res>
    implements $ShapeTemplateCopyWith<$Res> {
  factory _$$ShapeTemplateImplCopyWith(
          _$ShapeTemplateImpl value, $Res Function(_$ShapeTemplateImpl) then) =
      __$$ShapeTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Point> vertices,
      bool maintainAspectRatio,
      ShapeTemplateDetails? details});

  @override
  $ShapeTemplateDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$ShapeTemplateImplCopyWithImpl<$Res>
    extends _$ShapeTemplateCopyWithImpl<$Res, _$ShapeTemplateImpl>
    implements _$$ShapeTemplateImplCopyWith<$Res> {
  __$$ShapeTemplateImplCopyWithImpl(
      _$ShapeTemplateImpl _value, $Res Function(_$ShapeTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
    Object? maintainAspectRatio = null,
    Object? details = freezed,
  }) {
    return _then(_$ShapeTemplateImpl(
      vertices: null == vertices
          ? _value._vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      maintainAspectRatio: null == maintainAspectRatio
          ? _value.maintainAspectRatio
          : maintainAspectRatio // ignore: cast_nullable_to_non_nullable
              as bool,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ShapeTemplateDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShapeTemplateImpl implements _ShapeTemplate {
  const _$ShapeTemplateImpl(
      {required final List<Point> vertices,
      required this.maintainAspectRatio,
      this.details})
      : _vertices = vertices;

  factory _$ShapeTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShapeTemplateImplFromJson(json);

  /// The points representing the vertices of the shape.
  final List<Point> _vertices;

  /// The points representing the vertices of the shape.
  @override
  List<Point> get vertices {
    if (_vertices is EqualUnmodifiableListView) return _vertices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertices);
  }

  /// Whether the aspect ratio should be maintained when scaling the shape.
  @override
  final bool maintainAspectRatio;

  /// The details of the shape template.
  /// It contains the size and bounds of the shape.
  ///
  /// If a [ShapeTemplateDetails] is not provided, the size and bounds will be
  /// calculated based on the vertices every time the shape is drawn. To
  /// improve performance, it is recommended to provide the size and bounds
  /// manually.
  @override
  final ShapeTemplateDetails? details;

  @override
  String toString() {
    return 'ShapeTemplate(vertices: $vertices, maintainAspectRatio: $maintainAspectRatio, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShapeTemplateImpl &&
            const DeepCollectionEquality().equals(other._vertices, _vertices) &&
            (identical(other.maintainAspectRatio, maintainAspectRatio) ||
                other.maintainAspectRatio == maintainAspectRatio) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vertices),
      maintainAspectRatio,
      details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShapeTemplateImplCopyWith<_$ShapeTemplateImpl> get copyWith =>
      __$$ShapeTemplateImplCopyWithImpl<_$ShapeTemplateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShapeTemplateImplToJson(
      this,
    );
  }
}

abstract class _ShapeTemplate implements ShapeTemplate {
  const factory _ShapeTemplate(
      {required final List<Point> vertices,
      required final bool maintainAspectRatio,
      final ShapeTemplateDetails? details}) = _$ShapeTemplateImpl;

  factory _ShapeTemplate.fromJson(Map<String, dynamic> json) =
      _$ShapeTemplateImpl.fromJson;

  @override

  /// The points representing the vertices of the shape.
  List<Point> get vertices;
  @override

  /// Whether the aspect ratio should be maintained when scaling the shape.
  bool get maintainAspectRatio;
  @override

  /// The details of the shape template.
  /// It contains the size and bounds of the shape.
  ///
  /// If a [ShapeTemplateDetails] is not provided, the size and bounds will be
  /// calculated based on the vertices every time the shape is drawn. To
  /// improve performance, it is recommended to provide the size and bounds
  /// manually.
  ShapeTemplateDetails? get details;
  @override
  @JsonKey(ignore: true)
  _$$ShapeTemplateImplCopyWith<_$ShapeTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
