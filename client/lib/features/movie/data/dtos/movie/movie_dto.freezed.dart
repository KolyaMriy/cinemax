// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDTO _$MovieDTOFromJson(Map<String, dynamic> json) {
  return _MovieCardDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieDTO {
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path', defaultValue: '')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title', defaultValue: '')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language', defaultValue: '')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview', defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date', defaultValue: '')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average', defaultValue: 0)
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids', defaultValue: [])
  List<int> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDTOCopyWith<MovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDTOCopyWith<$Res> {
  factory $MovieDTOCopyWith(MovieDTO value, $Res Function(MovieDTO) then) =
      _$MovieDTOCopyWithImpl<$Res, MovieDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,
      @JsonKey(name: 'poster_path', defaultValue: '') String posterPath,
      @JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'original_title', defaultValue: '') String originalTitle,
      @JsonKey(name: 'original_language', defaultValue: '')
      String originalLanguage,
      @JsonKey(name: 'overview', defaultValue: '') String description,
      @JsonKey(name: 'popularity', defaultValue: 0) double popularity,
      @JsonKey(name: 'release_date', defaultValue: '') String releaseDate,
      @JsonKey(name: 'vote_average', defaultValue: 0) double voteAverage,
      @JsonKey(name: 'genre_ids', defaultValue: []) List<int> genres});
}

/// @nodoc
class _$MovieDTOCopyWithImpl<$Res, $Val extends MovieDTO>
    implements $MovieDTOCopyWith<$Res> {
  _$MovieDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = null,
    Object? posterPath = null,
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? originalLanguage = null,
    Object? description = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCardDTOImplCopyWith<$Res>
    implements $MovieDTOCopyWith<$Res> {
  factory _$$MovieCardDTOImplCopyWith(
          _$MovieCardDTOImpl value, $Res Function(_$MovieCardDTOImpl) then) =
      __$$MovieCardDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,
      @JsonKey(name: 'poster_path', defaultValue: '') String posterPath,
      @JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'original_title', defaultValue: '') String originalTitle,
      @JsonKey(name: 'original_language', defaultValue: '')
      String originalLanguage,
      @JsonKey(name: 'overview', defaultValue: '') String description,
      @JsonKey(name: 'popularity', defaultValue: 0) double popularity,
      @JsonKey(name: 'release_date', defaultValue: '') String releaseDate,
      @JsonKey(name: 'vote_average', defaultValue: 0) double voteAverage,
      @JsonKey(name: 'genre_ids', defaultValue: []) List<int> genres});
}

/// @nodoc
class __$$MovieCardDTOImplCopyWithImpl<$Res>
    extends _$MovieDTOCopyWithImpl<$Res, _$MovieCardDTOImpl>
    implements _$$MovieCardDTOImplCopyWith<$Res> {
  __$$MovieCardDTOImplCopyWithImpl(
      _$MovieCardDTOImpl _value, $Res Function(_$MovieCardDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = null,
    Object? posterPath = null,
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? originalLanguage = null,
    Object? description = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? genres = null,
  }) {
    return _then(_$MovieCardDTOImpl(
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCardDTOImpl extends _MovieCardDTO {
  _$MovieCardDTOImpl(
      {@JsonKey(name: 'backdrop_path', defaultValue: '')
      required this.backdropPath,
      @JsonKey(name: 'poster_path', defaultValue: '') required this.posterPath,
      @JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'original_title', defaultValue: '')
      required this.originalTitle,
      @JsonKey(name: 'original_language', defaultValue: '')
      required this.originalLanguage,
      @JsonKey(name: 'overview', defaultValue: '') required this.description,
      @JsonKey(name: 'popularity', defaultValue: 0) required this.popularity,
      @JsonKey(name: 'release_date', defaultValue: '')
      required this.releaseDate,
      @JsonKey(name: 'vote_average', defaultValue: 0) required this.voteAverage,
      @JsonKey(name: 'genre_ids', defaultValue: [])
      required final List<int> genres})
      : _genres = genres,
        super._();

  factory _$MovieCardDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCardDTOImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  final String backdropPath;
  @override
  @JsonKey(name: 'poster_path', defaultValue: '')
  final String posterPath;
  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'original_title', defaultValue: '')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language', defaultValue: '')
  final String originalLanguage;
  @override
  @JsonKey(name: 'overview', defaultValue: '')
  final String description;
  @override
  @JsonKey(name: 'popularity', defaultValue: 0)
  final double popularity;
  @override
  @JsonKey(name: 'release_date', defaultValue: '')
  final String releaseDate;
  @override
  @JsonKey(name: 'vote_average', defaultValue: 0)
  final double voteAverage;
  final List<int> _genres;
  @override
  @JsonKey(name: 'genre_ids', defaultValue: [])
  List<int> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MovieDTO(backdropPath: $backdropPath, posterPath: $posterPath, id: $id, title: $title, originalTitle: $originalTitle, originalLanguage: $originalLanguage, description: $description, popularity: $popularity, releaseDate: $releaseDate, voteAverage: $voteAverage, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCardDTOImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      posterPath,
      id,
      title,
      originalTitle,
      originalLanguage,
      description,
      popularity,
      releaseDate,
      voteAverage,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCardDTOImplCopyWith<_$MovieCardDTOImpl> get copyWith =>
      __$$MovieCardDTOImplCopyWithImpl<_$MovieCardDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieCardDTOImplToJson(
      this,
    );
  }
}

abstract class _MovieCardDTO extends MovieDTO {
  factory _MovieCardDTO(
      {@JsonKey(name: 'backdrop_path', defaultValue: '')
      required final String backdropPath,
      @JsonKey(name: 'poster_path', defaultValue: '')
      required final String posterPath,
      @JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'original_title', defaultValue: '')
      required final String originalTitle,
      @JsonKey(name: 'original_language', defaultValue: '')
      required final String originalLanguage,
      @JsonKey(name: 'overview', defaultValue: '')
      required final String description,
      @JsonKey(name: 'popularity', defaultValue: 0)
      required final double popularity,
      @JsonKey(name: 'release_date', defaultValue: '')
      required final String releaseDate,
      @JsonKey(name: 'vote_average', defaultValue: 0)
      required final double voteAverage,
      @JsonKey(name: 'genre_ids', defaultValue: [])
      required final List<int> genres}) = _$MovieCardDTOImpl;
  _MovieCardDTO._() : super._();

  factory _MovieCardDTO.fromJson(Map<String, dynamic> json) =
      _$MovieCardDTOImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  String get backdropPath;
  @override
  @JsonKey(name: 'poster_path', defaultValue: '')
  String get posterPath;
  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'original_title', defaultValue: '')
  String get originalTitle;
  @override
  @JsonKey(name: 'original_language', defaultValue: '')
  String get originalLanguage;
  @override
  @JsonKey(name: 'overview', defaultValue: '')
  String get description;
  @override
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity;
  @override
  @JsonKey(name: 'release_date', defaultValue: '')
  String get releaseDate;
  @override
  @JsonKey(name: 'vote_average', defaultValue: 0)
  double get voteAverage;
  @override
  @JsonKey(name: 'genre_ids', defaultValue: [])
  List<int> get genres;
  @override
  @JsonKey(ignore: true)
  _$$MovieCardDTOImplCopyWith<_$MovieCardDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
