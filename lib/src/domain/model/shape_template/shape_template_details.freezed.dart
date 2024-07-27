// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shape_template_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShapeTemplateDetails _$ShapeTemplateDetailsFromJson(Map<String, dynamic> json) {
  return _ShapeTemplateDetails.fromJson(json);
}

/// @nodoc
mixin _$ShapeTemplateDetails {
  /// The size of the shape.
  @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
  Size get size => throw _privateConstructorUsedError;

  /// The minimum x value of the shape.
  double get minX => throw _privateConstructorUsedError;

  /// The minimum y value of the shape.
  double get minY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShapeTemplateDetailsCopyWith<ShapeTemplateDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShapeTemplateDetailsCopyWith<$Res> {
  factory $ShapeTemplateDetailsCopyWith(ShapeTemplateDetails value,
          $Res Function(ShapeTemplateDetails) then) =
      _$ShapeTemplateDetailsCopyWithImpl<$Res, ShapeTemplateDetails>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) Size size,
      double minX,
      double minY});
}

/// @nodoc
class _$ShapeTemplateDetailsCopyWithImpl<$Res,
        $Val extends ShapeTemplateDetails>
    implements $ShapeTemplateDetailsCopyWith<$Res> {
  _$ShapeTemplateDetailsCopyWithImpl(this._value, this._then);

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
abstract class _$$ShapeTemplateDetailsImplCopyWith<$Res>
    implements $ShapeTemplateDetailsCopyWith<$Res> {
  factory _$$ShapeTemplateDetailsImplCopyWith(_$ShapeTemplateDetailsImpl value,
          $Res Function(_$ShapeTemplateDetailsImpl) then) =
      __$$ShapeTemplateDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) Size size,
      double minX,
      double minY});
}

/// @nodoc
class __$$ShapeTemplateDetailsImplCopyWithImpl<$Res>
    extends _$ShapeTemplateDetailsCopyWithImpl<$Res, _$ShapeTemplateDetailsImpl>
    implements _$$ShapeTemplateDetailsImplCopyWith<$Res> {
  __$$ShapeTemplateDetailsImplCopyWithImpl(_$ShapeTemplateDetailsImpl _value,
      $Res Function(_$ShapeTemplateDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? minX = null,
    Object? minY = null,
  }) {
    return _then(_$ShapeTemplateDetailsImpl(
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
class _$ShapeTemplateDetailsImpl implements _ShapeTemplateDetails {
  const _$ShapeTemplateDetailsImpl(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson) required this.size,
      required this.minX,
      required this.minY});

  factory _$ShapeTemplateDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShapeTemplateDetailsImplFromJson(json);

  /// The size of the shape.
  @override
  @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
  final Size size;

  /// The minimum x value of the shape.
  @override
  final double minX;

  /// The minimum y value of the shape.
  @override
  final double minY;

  @override
  String toString() {
    return 'ShapeTemplateDetails(size: $size, minX: $minX, minY: $minY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShapeTemplateDetailsImpl &&
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
  _$$ShapeTemplateDetailsImplCopyWith<_$ShapeTemplateDetailsImpl>
      get copyWith =>
          __$$ShapeTemplateDetailsImplCopyWithImpl<_$ShapeTemplateDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShapeTemplateDetailsImplToJson(
      this,
    );
  }
}

abstract class _ShapeTemplateDetails implements ShapeTemplateDetails {
  const factory _ShapeTemplateDetails(
      {@JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
      required final Size size,
      required final double minX,
      required final double minY}) = _$ShapeTemplateDetailsImpl;

  factory _ShapeTemplateDetails.fromJson(Map<String, dynamic> json) =
      _$ShapeTemplateDetailsImpl.fromJson;

  @override

  /// The size of the shape.
  @JsonKey(fromJson: sizeFromJson, toJson: sizeToJson)
  Size get size;
  @override

  /// The minimum x value of the shape.
  double get minX;
  @override

  /// The minimum y value of the shape.
  double get minY;
  @override
  @JsonKey(ignore: true)
  _$$ShapeTemplateDetailsImplCopyWith<_$ShapeTemplateDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
