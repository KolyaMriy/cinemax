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
  @HiveField(0)
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'original_title', defaultValue: '')
  String get originalTitle => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'overview', defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'poster_path', defaultValue: '')
  String get posterPath => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  String get backdropPath => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'release_date', defaultValue: '')
  String get releaseDate => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'vote_average', defaultValue: 0)
  double get voteAverage => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'genre_ids', defaultValue: [])
  List<int> get genres => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'original_language', defaultValue: '')
  String get originalLanguage => throw _privateConstructorUsedError;

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
      {@HiveField(0) @JsonKey(name: 'id', defaultValue: 0) int id,
      @HiveField(1) @JsonKey(name: 'title', defaultValue: '') String title,
      @HiveField(2)
      @JsonKey(name: 'original_title', defaultValue: '')
      String originalTitle,
      @HiveField(3)
      @JsonKey(name: 'overview', defaultValue: '')
      String description,
      @HiveField(4)
      @JsonKey(name: 'popularity', defaultValue: 0)
      double popularity,
      @HiveField(5)
      @JsonKey(name: 'poster_path', defaultValue: '')
      String posterPath,
      @HiveField(6)
      @JsonKey(name: 'backdrop_path', defaultValue: '')
      String backdropPath,
      @HiveField(7)
      @JsonKey(name: 'release_date', defaultValue: '')
      String releaseDate,
      @HiveField(8)
      @JsonKey(name: 'vote_average', defaultValue: 0)
      double voteAverage,
      @HiveField(9)
      @JsonKey(name: 'genre_ids', defaultValue: [])
      List<int> genres,
      @HiveField(10)
      @JsonKey(name: 'original_language', defaultValue: '')
      String originalLanguage});
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
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? backdropPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? genres = null,
    Object? originalLanguage = null,
  }) {
    return _then(_value.copyWith(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
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
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@HiveField(0) @JsonKey(name: 'id', defaultValue: 0) int id,
      @HiveField(1) @JsonKey(name: 'title', defaultValue: '') String title,
      @HiveField(2)
      @JsonKey(name: 'original_title', defaultValue: '')
      String originalTitle,
      @HiveField(3)
      @JsonKey(name: 'overview', defaultValue: '')
      String description,
      @HiveField(4)
      @JsonKey(name: 'popularity', defaultValue: 0)
      double popularity,
      @HiveField(5)
      @JsonKey(name: 'poster_path', defaultValue: '')
      String posterPath,
      @HiveField(6)
      @JsonKey(name: 'backdrop_path', defaultValue: '')
      String backdropPath,
      @HiveField(7)
      @JsonKey(name: 'release_date', defaultValue: '')
      String releaseDate,
      @HiveField(8)
      @JsonKey(name: 'vote_average', defaultValue: 0)
      double voteAverage,
      @HiveField(9)
      @JsonKey(name: 'genre_ids', defaultValue: [])
      List<int> genres,
      @HiveField(10)
      @JsonKey(name: 'original_language', defaultValue: '')
      String originalLanguage});
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
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? backdropPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? genres = null,
    Object? originalLanguage = null,
  }) {
    return _then(_$MovieCardDTOImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
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
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCardDTOImpl extends _MovieCardDTO {
  _$MovieCardDTOImpl(
      {@HiveField(0) @JsonKey(name: 'id', defaultValue: 0) required this.id,
      @HiveField(1)
      @JsonKey(name: 'title', defaultValue: '')
      required this.title,
      @HiveField(2)
      @JsonKey(name: 'original_title', defaultValue: '')
      required this.originalTitle,
      @HiveField(3)
      @JsonKey(name: 'overview', defaultValue: '')
      required this.description,
      @HiveField(4)
      @JsonKey(name: 'popularity', defaultValue: 0)
      required this.popularity,
      @HiveField(5)
      @JsonKey(name: 'poster_path', defaultValue: '')
      required this.posterPath,
      @HiveField(6)
      @JsonKey(name: 'backdrop_path', defaultValue: '')
      required this.backdropPath,
      @HiveField(7)
      @JsonKey(name: 'release_date', defaultValue: '')
      required this.releaseDate,
      @HiveField(8)
      @JsonKey(name: 'vote_average', defaultValue: 0)
      required this.voteAverage,
      @HiveField(9)
      @JsonKey(name: 'genre_ids', defaultValue: [])
      required final List<int> genres,
      @HiveField(10)
      @JsonKey(name: 'original_language', defaultValue: '')
      required this.originalLanguage})
      : _genres = genres,
        super._();

  factory _$MovieCardDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCardDTOImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: 'original_title', defaultValue: '')
  final String originalTitle;
  @override
  @HiveField(3)
  @JsonKey(name: 'overview', defaultValue: '')
  final String description;
  @override
  @HiveField(4)
  @JsonKey(name: 'popularity', defaultValue: 0)
  final double popularity;
  @override
  @HiveField(5)
  @JsonKey(name: 'poster_path', defaultValue: '')
  final String posterPath;
  @override
  @HiveField(6)
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  final String backdropPath;
  @override
  @HiveField(7)
  @JsonKey(name: 'release_date', defaultValue: '')
  final String releaseDate;
  @override
  @HiveField(8)
  @JsonKey(name: 'vote_average', defaultValue: 0)
  final double voteAverage;
  final List<int> _genres;
  @override
  @HiveField(9)
  @JsonKey(name: 'genre_ids', defaultValue: [])
  List<int> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @HiveField(10)
  @JsonKey(name: 'original_language', defaultValue: '')
  final String originalLanguage;

  @override
  String toString() {
    return 'MovieDTO(id: $id, title: $title, originalTitle: $originalTitle, description: $description, popularity: $popularity, posterPath: $posterPath, backdropPath: $backdropPath, releaseDate: $releaseDate, voteAverage: $voteAverage, genres: $genres, originalLanguage: $originalLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCardDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      originalTitle,
      description,
      popularity,
      posterPath,
      backdropPath,
      releaseDate,
      voteAverage,
      const DeepCollectionEquality().hash(_genres),
      originalLanguage);

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
      {@HiveField(0)
      @JsonKey(name: 'id', defaultValue: 0)
      required final int id,
      @HiveField(1)
      @JsonKey(name: 'title', defaultValue: '')
      required final String title,
      @HiveField(2)
      @JsonKey(name: 'original_title', defaultValue: '')
      required final String originalTitle,
      @HiveField(3)
      @JsonKey(name: 'overview', defaultValue: '')
      required final String description,
      @HiveField(4)
      @JsonKey(name: 'popularity', defaultValue: 0)
      required final double popularity,
      @HiveField(5)
      @JsonKey(name: 'poster_path', defaultValue: '')
      required final String posterPath,
      @HiveField(6)
      @JsonKey(name: 'backdrop_path', defaultValue: '')
      required final String backdropPath,
      @HiveField(7)
      @JsonKey(name: 'release_date', defaultValue: '')
      required final String releaseDate,
      @HiveField(8)
      @JsonKey(name: 'vote_average', defaultValue: 0)
      required final double voteAverage,
      @HiveField(9)
      @JsonKey(name: 'genre_ids', defaultValue: [])
      required final List<int> genres,
      @HiveField(10)
      @JsonKey(name: 'original_language', defaultValue: '')
      required final String originalLanguage}) = _$MovieCardDTOImpl;
  _MovieCardDTO._() : super._();

  factory _MovieCardDTO.fromJson(Map<String, dynamic> json) =
      _$MovieCardDTOImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @HiveField(2)
  @JsonKey(name: 'original_title', defaultValue: '')
  String get originalTitle;
  @override
  @HiveField(3)
  @JsonKey(name: 'overview', defaultValue: '')
  String get description;
  @override
  @HiveField(4)
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity;
  @override
  @HiveField(5)
  @JsonKey(name: 'poster_path', defaultValue: '')
  String get posterPath;
  @override
  @HiveField(6)
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  String get backdropPath;
  @override
  @HiveField(7)
  @JsonKey(name: 'release_date', defaultValue: '')
  String get releaseDate;
  @override
  @HiveField(8)
  @JsonKey(name: 'vote_average', defaultValue: 0)
  double get voteAverage;
  @override
  @HiveField(9)
  @JsonKey(name: 'genre_ids', defaultValue: [])
  List<int> get genres;
  @override
  @HiveField(10)
  @JsonKey(name: 'original_language', defaultValue: '')
  String get originalLanguage;
  @override
  @JsonKey(ignore: true)
  _$$MovieCardDTOImplCopyWith<_$MovieCardDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
