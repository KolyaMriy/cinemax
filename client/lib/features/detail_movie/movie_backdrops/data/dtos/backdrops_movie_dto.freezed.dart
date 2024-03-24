// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backdrops_movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BackdropMoviesDTO _$BackdropMoviesDTOFromJson(Map<String, dynamic> json) {
  return _BackdropMoviesDTO.fromJson(json);
}

/// @nodoc
mixin _$BackdropMoviesDTO {
  @HiveField(1)
  @JsonKey(name: 'file_path', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'width', defaultValue: 0)
  double get width => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'height', defaultValue: 0)
  double get height => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'aspect_ratio', defaultValue: 0)
  double get aspectRatio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackdropMoviesDTOCopyWith<BackdropMoviesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackdropMoviesDTOCopyWith<$Res> {
  factory $BackdropMoviesDTOCopyWith(
          BackdropMoviesDTO value, $Res Function(BackdropMoviesDTO) then) =
      _$BackdropMoviesDTOCopyWithImpl<$Res, BackdropMoviesDTO>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'file_path', defaultValue: '') String image,
      @HiveField(2) @JsonKey(name: 'width', defaultValue: 0) double width,
      @HiveField(3) @JsonKey(name: 'height', defaultValue: 0) double height,
      @HiveField(4)
      @JsonKey(name: 'aspect_ratio', defaultValue: 0)
      double aspectRatio});
}

/// @nodoc
class _$BackdropMoviesDTOCopyWithImpl<$Res, $Val extends BackdropMoviesDTO>
    implements $BackdropMoviesDTOCopyWith<$Res> {
  _$BackdropMoviesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? width = null,
    Object? height = null,
    Object? aspectRatio = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackdropMoviesDTOImplCopyWith<$Res>
    implements $BackdropMoviesDTOCopyWith<$Res> {
  factory _$$BackdropMoviesDTOImplCopyWith(_$BackdropMoviesDTOImpl value,
          $Res Function(_$BackdropMoviesDTOImpl) then) =
      __$$BackdropMoviesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'file_path', defaultValue: '') String image,
      @HiveField(2) @JsonKey(name: 'width', defaultValue: 0) double width,
      @HiveField(3) @JsonKey(name: 'height', defaultValue: 0) double height,
      @HiveField(4)
      @JsonKey(name: 'aspect_ratio', defaultValue: 0)
      double aspectRatio});
}

/// @nodoc
class __$$BackdropMoviesDTOImplCopyWithImpl<$Res>
    extends _$BackdropMoviesDTOCopyWithImpl<$Res, _$BackdropMoviesDTOImpl>
    implements _$$BackdropMoviesDTOImplCopyWith<$Res> {
  __$$BackdropMoviesDTOImplCopyWithImpl(_$BackdropMoviesDTOImpl _value,
      $Res Function(_$BackdropMoviesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? width = null,
    Object? height = null,
    Object? aspectRatio = null,
  }) {
    return _then(_$BackdropMoviesDTOImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackdropMoviesDTOImpl extends _BackdropMoviesDTO {
  _$BackdropMoviesDTOImpl(
      {@HiveField(1)
      @JsonKey(name: 'file_path', defaultValue: '')
      required this.image,
      @HiveField(2)
      @JsonKey(name: 'width', defaultValue: 0)
      required this.width,
      @HiveField(3)
      @JsonKey(name: 'height', defaultValue: 0)
      required this.height,
      @HiveField(4)
      @JsonKey(name: 'aspect_ratio', defaultValue: 0)
      required this.aspectRatio})
      : super._();

  factory _$BackdropMoviesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackdropMoviesDTOImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: 'file_path', defaultValue: '')
  final String image;
  @override
  @HiveField(2)
  @JsonKey(name: 'width', defaultValue: 0)
  final double width;
  @override
  @HiveField(3)
  @JsonKey(name: 'height', defaultValue: 0)
  final double height;
  @override
  @HiveField(4)
  @JsonKey(name: 'aspect_ratio', defaultValue: 0)
  final double aspectRatio;

  @override
  String toString() {
    return 'BackdropMoviesDTO(image: $image, width: $width, height: $height, aspectRatio: $aspectRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackdropMoviesDTOImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, width, height, aspectRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackdropMoviesDTOImplCopyWith<_$BackdropMoviesDTOImpl> get copyWith =>
      __$$BackdropMoviesDTOImplCopyWithImpl<_$BackdropMoviesDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackdropMoviesDTOImplToJson(
      this,
    );
  }
}

abstract class _BackdropMoviesDTO extends BackdropMoviesDTO {
  factory _BackdropMoviesDTO(
      {@HiveField(1)
      @JsonKey(name: 'file_path', defaultValue: '')
      required final String image,
      @HiveField(2)
      @JsonKey(name: 'width', defaultValue: 0)
      required final double width,
      @HiveField(3)
      @JsonKey(name: 'height', defaultValue: 0)
      required final double height,
      @HiveField(4)
      @JsonKey(name: 'aspect_ratio', defaultValue: 0)
      required final double aspectRatio}) = _$BackdropMoviesDTOImpl;
  _BackdropMoviesDTO._() : super._();

  factory _BackdropMoviesDTO.fromJson(Map<String, dynamic> json) =
      _$BackdropMoviesDTOImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: 'file_path', defaultValue: '')
  String get image;
  @override
  @HiveField(2)
  @JsonKey(name: 'width', defaultValue: 0)
  double get width;
  @override
  @HiveField(3)
  @JsonKey(name: 'height', defaultValue: 0)
  double get height;
  @override
  @HiveField(4)
  @JsonKey(name: 'aspect_ratio', defaultValue: 0)
  double get aspectRatio;
  @override
  @JsonKey(ignore: true)
  _$$BackdropMoviesDTOImplCopyWith<_$BackdropMoviesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
