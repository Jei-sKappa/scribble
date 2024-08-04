// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polygon_template_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PolygonTemplateDetails _$PolygonTemplateDetailsFromJson(
    Map<String, dynamic> json) {
  return _PolygonTemplateDetails.fromJson(json);
}

/// @nodoc
mixin _$PolygonTemplateDetails {
  /// The size of the polygon.
  @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
  Size get size => throw _privateConstructorUsedError;

  /// The minimum x value of the polygon.
  double get minX => throw _privateConstructorUsedError;

  /// The minimum y value of the polygon.
  double get minY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolygonTemplateDetailsCopyWith<PolygonTemplateDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonTemplateDetailsCopyWith<$Res> {
  factory $PolygonTemplateDetailsCopyWith(PolygonTemplateDetails value,
          $Res Function(PolygonTemplateDetails) then) =
      _$PolygonTemplateDetailsCopyWithImpl<$Res, PolygonTemplateDetails>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) Size size,
      double minX,
      double minY});
}

/// @nodoc
class _$PolygonTemplateDetailsCopyWithImpl<$Res,
        $Val extends PolygonTemplateDetails>
    implements $PolygonTemplateDetailsCopyWith<$Res> {
  _$PolygonTemplateDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? minX = null,
    Object? minY = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      minX: null == minX
          ? _value.minX
          : minX // ignore: cast_nullable_to_non_nullable
              as double,
      minY: null == minY
          ? _value.minY
          : minY // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolygonTemplateDetailsImplCopyWith<$Res>
    implements $PolygonTemplateDetailsCopyWith<$Res> {
  factory _$$PolygonTemplateDetailsImplCopyWith(
          _$PolygonTemplateDetailsImpl value,
          $Res Function(_$PolygonTemplateDetailsImpl) then) =
      __$$PolygonTemplateDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) Size size,
      double minX,
      double minY});
}

/// @nodoc
class __$$PolygonTemplateDetailsImplCopyWithImpl<$Res>
    extends _$PolygonTemplateDetailsCopyWithImpl<$Res,
        _$PolygonTemplateDetailsImpl>
    implements _$$PolygonTemplateDetailsImplCopyWith<$Res> {
  __$$PolygonTemplateDetailsImplCopyWithImpl(
      _$PolygonTemplateDetailsImpl _value,
      $Res Function(_$PolygonTemplateDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? minX = null,
    Object? minY = null,
  }) {
    return _then(_$PolygonTemplateDetailsImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      minX: null == minX
          ? _value.minX
          : minX // ignore: cast_nullable_to_non_nullable
              as double,
      minY: null == minY
          ? _value.minY
          : minY // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolygonTemplateDetailsImpl implements _PolygonTemplateDetails {
  const _$PolygonTemplateDetailsImpl(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) required this.size,
      required this.minX,
      required this.minY});

  factory _$PolygonTemplateDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolygonTemplateDetailsImplFromJson(json);

  /// The size of the polygon.
  @override
  @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
  final Size size;

  /// The minimum x value of the polygon.
  @override
  final double minX;

  /// The minimum y value of the polygon.
  @override
  final double minY;

  @override
  String toString() {
    return 'PolygonTemplateDetails(size: $size, minX: $minX, minY: $minY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolygonTemplateDetailsImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.minX, minX) || other.minX == minX) &&
            (identical(other.minY, minY) || other.minY == minY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, minX, minY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolygonTemplateDetailsImplCopyWith<_$PolygonTemplateDetailsImpl>
      get copyWith => __$$PolygonTemplateDetailsImplCopyWithImpl<
          _$PolygonTemplateDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolygonTemplateDetailsImplToJson(
      this,
    );
  }
}

abstract class _PolygonTemplateDetails implements PolygonTemplateDetails {
  const factory _PolygonTemplateDetails(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
      required final Size size,
      required final double minX,
      required final double minY}) = _$PolygonTemplateDetailsImpl;

  factory _PolygonTemplateDetails.fromJson(Map<String, dynamic> json) =
      _$PolygonTemplateDetailsImpl.fromJson;

  @override

  /// The size of the polygon.
  @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
  Size get size;
  @override

  /// The minimum x value of the polygon.
  double get minX;
  @override

  /// The minimum y value of the polygon.
  double get minY;
  @override
  @JsonKey(ignore: true)
  _$$PolygonTemplateDetailsImplCopyWith<_$PolygonTemplateDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
