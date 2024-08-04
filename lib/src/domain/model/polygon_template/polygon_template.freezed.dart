// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polygon_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PolygonTemplate _$PolygonTemplateFromJson(Map<String, dynamic> json) {
  return _PolygonTemplate.fromJson(json);
}

/// @nodoc
mixin _$PolygonTemplate {
  /// The points representing the vertices of the polygon.
  List<Point> get vertices => throw _privateConstructorUsedError;

  /// Whether the aspect ratio should be maintained when scaling the polygon.
  bool get maintainAspectRatio => throw _privateConstructorUsedError;

  /// The details of the polygon template.
  /// It contains the size and bounds of the polygon.
  ///
  /// If a [PolygonTemplateDetails] is not provided, the size and bounds will be
  /// calculated based on the vertices every time the polygon is drawn. To
  /// improve performance, it is recommended to provide the size and bounds
  /// manually.
  PolygonTemplateDetails? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolygonTemplateCopyWith<PolygonTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonTemplateCopyWith<$Res> {
  factory $PolygonTemplateCopyWith(
          PolygonTemplate value, $Res Function(PolygonTemplate) then) =
      _$PolygonTemplateCopyWithImpl<$Res, PolygonTemplate>;
  @useResult
  $Res call(
      {List<Point> vertices,
      bool maintainAspectRatio,
      PolygonTemplateDetails? details});

  $PolygonTemplateDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$PolygonTemplateCopyWithImpl<$Res, $Val extends PolygonTemplate>
    implements $PolygonTemplateCopyWith<$Res> {
  _$PolygonTemplateCopyWithImpl(this._value, this._then);

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
              as PolygonTemplateDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolygonTemplateDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $PolygonTemplateDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PolygonTemplateImplCopyWith<$Res>
    implements $PolygonTemplateCopyWith<$Res> {
  factory _$$PolygonTemplateImplCopyWith(_$PolygonTemplateImpl value,
          $Res Function(_$PolygonTemplateImpl) then) =
      __$$PolygonTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Point> vertices,
      bool maintainAspectRatio,
      PolygonTemplateDetails? details});

  @override
  $PolygonTemplateDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$PolygonTemplateImplCopyWithImpl<$Res>
    extends _$PolygonTemplateCopyWithImpl<$Res, _$PolygonTemplateImpl>
    implements _$$PolygonTemplateImplCopyWith<$Res> {
  __$$PolygonTemplateImplCopyWithImpl(
      _$PolygonTemplateImpl _value, $Res Function(_$PolygonTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
    Object? maintainAspectRatio = null,
    Object? details = freezed,
  }) {
    return _then(_$PolygonTemplateImpl(
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
              as PolygonTemplateDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolygonTemplateImpl implements _PolygonTemplate {
  const _$PolygonTemplateImpl(
      {required final List<Point> vertices,
      required this.maintainAspectRatio,
      this.details})
      : _vertices = vertices;

  factory _$PolygonTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolygonTemplateImplFromJson(json);

  /// The points representing the vertices of the polygon.
  final List<Point> _vertices;

  /// The points representing the vertices of the polygon.
  @override
  List<Point> get vertices {
    if (_vertices is EqualUnmodifiableListView) return _vertices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertices);
  }

  /// Whether the aspect ratio should be maintained when scaling the polygon.
  @override
  final bool maintainAspectRatio;

  /// The details of the polygon template.
  /// It contains the size and bounds of the polygon.
  ///
  /// If a [PolygonTemplateDetails] is not provided, the size and bounds will be
  /// calculated based on the vertices every time the polygon is drawn. To
  /// improve performance, it is recommended to provide the size and bounds
  /// manually.
  @override
  final PolygonTemplateDetails? details;

  @override
  String toString() {
    return 'PolygonTemplate(vertices: $vertices, maintainAspectRatio: $maintainAspectRatio, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolygonTemplateImpl &&
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
  _$$PolygonTemplateImplCopyWith<_$PolygonTemplateImpl> get copyWith =>
      __$$PolygonTemplateImplCopyWithImpl<_$PolygonTemplateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolygonTemplateImplToJson(
      this,
    );
  }
}

abstract class _PolygonTemplate implements PolygonTemplate {
  const factory _PolygonTemplate(
      {required final List<Point> vertices,
      required final bool maintainAspectRatio,
      final PolygonTemplateDetails? details}) = _$PolygonTemplateImpl;

  factory _PolygonTemplate.fromJson(Map<String, dynamic> json) =
      _$PolygonTemplateImpl.fromJson;

  @override

  /// The points representing the vertices of the polygon.
  List<Point> get vertices;
  @override

  /// Whether the aspect ratio should be maintained when scaling the polygon.
  bool get maintainAspectRatio;
  @override

  /// The details of the polygon template.
  /// It contains the size and bounds of the polygon.
  ///
  /// If a [PolygonTemplateDetails] is not provided, the size and bounds will be
  /// calculated based on the vertices every time the polygon is drawn. To
  /// improve performance, it is recommended to provide the size and bounds
  /// manually.
  PolygonTemplateDetails? get details;
  @override
  @JsonKey(ignore: true)
  _$$PolygonTemplateImplCopyWith<_$PolygonTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
