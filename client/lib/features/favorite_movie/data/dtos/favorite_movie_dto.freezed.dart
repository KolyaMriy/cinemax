// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteMovieDTO _$FavoriteMovieDTOFromJson(Map<String, dynamic> json) {
  return _FavoriteMovieDTO.fromJson(json);
}

/// @nodoc
mixin _$FavoriteMovieDTO {
  @HiveField(1)
  @JsonKey(name: 'movie', defaultValue: null)
  MovieDTO? get movie => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteMovieDTOCopyWith<FavoriteMovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteMovieDTOCopyWith<$Res> {
  factory $FavoriteMovieDTOCopyWith(
          FavoriteMovieDTO value, $Res Function(FavoriteMovieDTO) then) =
      _$FavoriteMovieDTOCopyWithImpl<$Res, FavoriteMovieDTO>;
  @useResult
  $Res call(
      {@HiveField(1)
      @JsonKey(name: 'movie', defaultValue: null)
      MovieDTO? movie,
      @HiveField(2)
      @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
      DateTime createdAt});

  $MovieDTOCopyWith<$Res>? get movie;
}

/// @nodoc
class _$FavoriteMovieDTOCopyWithImpl<$Res, $Val extends FavoriteMovieDTO>
    implements $FavoriteMovieDTOCopyWith<$Res> {
  _$FavoriteMovieDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDTO?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDTOCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieDTOCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteMovieDTOImplCopyWith<$Res>
    implements $FavoriteMovieDTOCopyWith<$Res> {
  factory _$$FavoriteMovieDTOImplCopyWith(_$FavoriteMovieDTOImpl value,
          $Res Function(_$FavoriteMovieDTOImpl) then) =
      __$$FavoriteMovieDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1)
      @JsonKey(name: 'movie', defaultValue: null)
      MovieDTO? movie,
      @HiveField(2)
      @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
      DateTime createdAt});

  @override
  $MovieDTOCopyWith<$Res>? get movie;
}

/// @nodoc
class __$$FavoriteMovieDTOImplCopyWithImpl<$Res>
    extends _$FavoriteMovieDTOCopyWithImpl<$Res, _$FavoriteMovieDTOImpl>
    implements _$$FavoriteMovieDTOImplCopyWith<$Res> {
  __$$FavoriteMovieDTOImplCopyWithImpl(_$FavoriteMovieDTOImpl _value,
      $Res Function(_$FavoriteMovieDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$FavoriteMovieDTOImpl(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDTO?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteMovieDTOImpl implements _FavoriteMovieDTO {
  _$FavoriteMovieDTOImpl(
      {@HiveField(1)
      @JsonKey(name: 'movie', defaultValue: null)
      required this.movie,
      @HiveField(2)
      @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
      required this.createdAt});

  factory _$FavoriteMovieDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteMovieDTOImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: 'movie', defaultValue: null)
  final MovieDTO? movie;
  @override
  @HiveField(2)
  @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
  final DateTime createdAt;

  @override
  String toString() {
    return 'FavoriteMovieDTO(movie: $movie, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMovieDTOImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movie, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteMovieDTOImplCopyWith<_$FavoriteMovieDTOImpl> get copyWith =>
      __$$FavoriteMovieDTOImplCopyWithImpl<_$FavoriteMovieDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteMovieDTOImplToJson(
      this,
    );
  }
}

abstract class _FavoriteMovieDTO implements FavoriteMovieDTO {
  factory _FavoriteMovieDTO(
      {@HiveField(1)
      @JsonKey(name: 'movie', defaultValue: null)
      required final MovieDTO? movie,
      @HiveField(2)
      @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
      required final DateTime createdAt}) = _$FavoriteMovieDTOImpl;

  factory _FavoriteMovieDTO.fromJson(Map<String, dynamic> json) =
      _$FavoriteMovieDTOImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: 'movie', defaultValue: null)
  MovieDTO? get movie;
  @override
  @HiveField(2)
  @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteMovieDTOImplCopyWith<_$FavoriteMovieDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
