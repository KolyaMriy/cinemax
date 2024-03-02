// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailDTO _$MovieDetailDTOFromJson(Map<String, dynamic> json) {
  return _MovieDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies', defaultValue: [])
  List<ProductionCompanyDTO> get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'genres', defaultValue: [])
  List<GenreDTO> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language', defaultValue: '')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title', defaultValue: '')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview', defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity', defaultValue: 0.0)
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path', defaultValue: '')
  String get posterPicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  String get backdropPicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average', defaultValue: 0.0)
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count', defaultValue: 0.0)
  double get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'runtime', defaultValue: 0)
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'revenue', defaultValue: 0.0)
  double get revenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: '')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'tagline', defaultValue: '')
  String get tagline => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date', defaultValue: '')
  String get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailDTOCopyWith<MovieDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailDTOCopyWith<$Res> {
  factory $MovieDetailDTOCopyWith(
          MovieDetailDTO value, $Res Function(MovieDetailDTO) then) =
      _$MovieDetailDTOCopyWithImpl<$Res, MovieDetailDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'production_companies', defaultValue: [])
      List<ProductionCompanyDTO> productionCompanies,
      @JsonKey(name: 'genres', defaultValue: []) List<GenreDTO> genres,
      @JsonKey(name: 'original_language', defaultValue: '')
      String originalLanguage,
      @JsonKey(name: 'original_title', defaultValue: '') String originalTitle,
      @JsonKey(name: 'overview', defaultValue: '') String description,
      @JsonKey(name: 'popularity', defaultValue: 0.0) double popularity,
      @JsonKey(name: 'poster_path', defaultValue: '') String posterPicture,
      @JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPicture,
      @JsonKey(name: 'vote_average', defaultValue: 0.0) double voteAverage,
      @JsonKey(name: 'vote_count', defaultValue: 0.0) double voteCount,
      @JsonKey(name: 'runtime', defaultValue: 0) int runtime,
      @JsonKey(name: 'revenue', defaultValue: 0.0) double revenue,
      @JsonKey(name: 'status', defaultValue: '') String status,
      @JsonKey(name: 'tagline', defaultValue: '') String tagline,
      @JsonKey(name: 'release_date', defaultValue: '') String releaseDate});
}

/// @nodoc
class _$MovieDetailDTOCopyWithImpl<$Res, $Val extends MovieDetailDTO>
    implements $MovieDetailDTOCopyWith<$Res> {
  _$MovieDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? productionCompanies = null,
    Object? genres = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? popularity = null,
    Object? posterPicture = null,
    Object? backdropPicture = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? runtime = null,
    Object? revenue = null,
    Object? status = null,
    Object? tagline = null,
    Object? releaseDate = null,
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
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyDTO>,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
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
      posterPicture: null == posterPicture
          ? _value.posterPicture
          : posterPicture // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPicture: null == backdropPicture
          ? _value.backdropPicture
          : backdropPicture // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailDTOImplCopyWith<$Res>
    implements $MovieDetailDTOCopyWith<$Res> {
  factory _$$MovieDetailDTOImplCopyWith(_$MovieDetailDTOImpl value,
          $Res Function(_$MovieDetailDTOImpl) then) =
      __$$MovieDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'production_companies', defaultValue: [])
      List<ProductionCompanyDTO> productionCompanies,
      @JsonKey(name: 'genres', defaultValue: []) List<GenreDTO> genres,
      @JsonKey(name: 'original_language', defaultValue: '')
      String originalLanguage,
      @JsonKey(name: 'original_title', defaultValue: '') String originalTitle,
      @JsonKey(name: 'overview', defaultValue: '') String description,
      @JsonKey(name: 'popularity', defaultValue: 0.0) double popularity,
      @JsonKey(name: 'poster_path', defaultValue: '') String posterPicture,
      @JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPicture,
      @JsonKey(name: 'vote_average', defaultValue: 0.0) double voteAverage,
      @JsonKey(name: 'vote_count', defaultValue: 0.0) double voteCount,
      @JsonKey(name: 'runtime', defaultValue: 0) int runtime,
      @JsonKey(name: 'revenue', defaultValue: 0.0) double revenue,
      @JsonKey(name: 'status', defaultValue: '') String status,
      @JsonKey(name: 'tagline', defaultValue: '') String tagline,
      @JsonKey(name: 'release_date', defaultValue: '') String releaseDate});
}

/// @nodoc
class __$$MovieDetailDTOImplCopyWithImpl<$Res>
    extends _$MovieDetailDTOCopyWithImpl<$Res, _$MovieDetailDTOImpl>
    implements _$$MovieDetailDTOImplCopyWith<$Res> {
  __$$MovieDetailDTOImplCopyWithImpl(
      _$MovieDetailDTOImpl _value, $Res Function(_$MovieDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? productionCompanies = null,
    Object? genres = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? popularity = null,
    Object? posterPicture = null,
    Object? backdropPicture = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? runtime = null,
    Object? revenue = null,
    Object? status = null,
    Object? tagline = null,
    Object? releaseDate = null,
  }) {
    return _then(_$MovieDetailDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      productionCompanies: null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyDTO>,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
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
      posterPicture: null == posterPicture
          ? _value.posterPicture
          : posterPicture // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPicture: null == backdropPicture
          ? _value.backdropPicture
          : backdropPicture // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailDTOImpl extends _MovieDetailDTO {
  _$MovieDetailDTOImpl(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'production_companies', defaultValue: [])
      required final List<ProductionCompanyDTO> productionCompanies,
      @JsonKey(name: 'genres', defaultValue: [])
      required final List<GenreDTO> genres,
      @JsonKey(name: 'original_language', defaultValue: '')
      required this.originalLanguage,
      @JsonKey(name: 'original_title', defaultValue: '')
      required this.originalTitle,
      @JsonKey(name: 'overview', defaultValue: '') required this.description,
      @JsonKey(name: 'popularity', defaultValue: 0.0) required this.popularity,
      @JsonKey(name: 'poster_path', defaultValue: '')
      required this.posterPicture,
      @JsonKey(name: 'backdrop_path', defaultValue: '')
      required this.backdropPicture,
      @JsonKey(name: 'vote_average', defaultValue: 0.0)
      required this.voteAverage,
      @JsonKey(name: 'vote_count', defaultValue: 0.0) required this.voteCount,
      @JsonKey(name: 'runtime', defaultValue: 0) required this.runtime,
      @JsonKey(name: 'revenue', defaultValue: 0.0) required this.revenue,
      @JsonKey(name: 'status', defaultValue: '') required this.status,
      @JsonKey(name: 'tagline', defaultValue: '') required this.tagline,
      @JsonKey(name: 'release_date', defaultValue: '')
      required this.releaseDate})
      : _productionCompanies = productionCompanies,
        _genres = genres,
        super._();

  factory _$MovieDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  final List<ProductionCompanyDTO> _productionCompanies;
  @override
  @JsonKey(name: 'production_companies', defaultValue: [])
  List<ProductionCompanyDTO> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  final List<GenreDTO> _genres;
  @override
  @JsonKey(name: 'genres', defaultValue: [])
  List<GenreDTO> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @JsonKey(name: 'original_language', defaultValue: '')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title', defaultValue: '')
  final String originalTitle;
  @override
  @JsonKey(name: 'overview', defaultValue: '')
  final String description;
  @override
  @JsonKey(name: 'popularity', defaultValue: 0.0)
  final double popularity;
  @override
  @JsonKey(name: 'poster_path', defaultValue: '')
  final String posterPicture;
  @override
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  final String backdropPicture;
  @override
  @JsonKey(name: 'vote_average', defaultValue: 0.0)
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count', defaultValue: 0.0)
  final double voteCount;
  @override
  @JsonKey(name: 'runtime', defaultValue: 0)
  final int runtime;
  @override
  @JsonKey(name: 'revenue', defaultValue: 0.0)
  final double revenue;
  @override
  @JsonKey(name: 'status', defaultValue: '')
  final String status;
  @override
  @JsonKey(name: 'tagline', defaultValue: '')
  final String tagline;
  @override
  @JsonKey(name: 'release_date', defaultValue: '')
  final String releaseDate;

  @override
  String toString() {
    return 'MovieDetailDTO(id: $id, title: $title, productionCompanies: $productionCompanies, genres: $genres, originalLanguage: $originalLanguage, originalTitle: $originalTitle, description: $description, popularity: $popularity, posterPicture: $posterPicture, backdropPicture: $backdropPicture, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, revenue: $revenue, status: $status, tagline: $tagline, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPicture, posterPicture) ||
                other.posterPicture == posterPicture) &&
            (identical(other.backdropPicture, backdropPicture) ||
                other.backdropPicture == backdropPicture) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_productionCompanies),
      const DeepCollectionEquality().hash(_genres),
      originalLanguage,
      originalTitle,
      description,
      popularity,
      posterPicture,
      backdropPicture,
      voteAverage,
      voteCount,
      runtime,
      revenue,
      status,
      tagline,
      releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailDTOImplCopyWith<_$MovieDetailDTOImpl> get copyWith =>
      __$$MovieDetailDTOImplCopyWithImpl<_$MovieDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailDTO extends MovieDetailDTO {
  factory _MovieDetailDTO(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'production_companies', defaultValue: [])
      required final List<ProductionCompanyDTO> productionCompanies,
      @JsonKey(name: 'genres', defaultValue: [])
      required final List<GenreDTO> genres,
      @JsonKey(name: 'original_language', defaultValue: '')
      required final String originalLanguage,
      @JsonKey(name: 'original_title', defaultValue: '')
      required final String originalTitle,
      @JsonKey(name: 'overview', defaultValue: '')
      required final String description,
      @JsonKey(name: 'popularity', defaultValue: 0.0)
      required final double popularity,
      @JsonKey(name: 'poster_path', defaultValue: '')
      required final String posterPicture,
      @JsonKey(name: 'backdrop_path', defaultValue: '')
      required final String backdropPicture,
      @JsonKey(name: 'vote_average', defaultValue: 0.0)
      required final double voteAverage,
      @JsonKey(name: 'vote_count', defaultValue: 0.0)
      required final double voteCount,
      @JsonKey(name: 'runtime', defaultValue: 0) required final int runtime,
      @JsonKey(name: 'revenue', defaultValue: 0.0)
      required final double revenue,
      @JsonKey(name: 'status', defaultValue: '') required final String status,
      @JsonKey(name: 'tagline', defaultValue: '') required final String tagline,
      @JsonKey(name: 'release_date', defaultValue: '')
      required final String releaseDate}) = _$MovieDetailDTOImpl;
  _MovieDetailDTO._() : super._();

  factory _MovieDetailDTO.fromJson(Map<String, dynamic> json) =
      _$MovieDetailDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'production_companies', defaultValue: [])
  List<ProductionCompanyDTO> get productionCompanies;
  @override
  @JsonKey(name: 'genres', defaultValue: [])
  List<GenreDTO> get genres;
  @override
  @JsonKey(name: 'original_language', defaultValue: '')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title', defaultValue: '')
  String get originalTitle;
  @override
  @JsonKey(name: 'overview', defaultValue: '')
  String get description;
  @override
  @JsonKey(name: 'popularity', defaultValue: 0.0)
  double get popularity;
  @override
  @JsonKey(name: 'poster_path', defaultValue: '')
  String get posterPicture;
  @override
  @JsonKey(name: 'backdrop_path', defaultValue: '')
  String get backdropPicture;
  @override
  @JsonKey(name: 'vote_average', defaultValue: 0.0)
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count', defaultValue: 0.0)
  double get voteCount;
  @override
  @JsonKey(name: 'runtime', defaultValue: 0)
  int get runtime;
  @override
  @JsonKey(name: 'revenue', defaultValue: 0.0)
  double get revenue;
  @override
  @JsonKey(name: 'status', defaultValue: '')
  String get status;
  @override
  @JsonKey(name: 'tagline', defaultValue: '')
  String get tagline;
  @override
  @JsonKey(name: 'release_date', defaultValue: '')
  String get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailDTOImplCopyWith<_$MovieDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
