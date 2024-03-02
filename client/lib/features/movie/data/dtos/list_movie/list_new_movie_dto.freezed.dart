// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_new_movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListMovieDTO _$ListMovieDTOFromJson(Map<String, dynamic> json) {
  return _ListNewMovieDTO.fromJson(json);
}

/// @nodoc
mixin _$ListMovieDTO {
  @JsonKey(name: 'results', defaultValue: [])
  List<MovieDTO>? get movies => throw _privateConstructorUsedError;
  @JsonKey(name: 'page', defaultValue: 1)
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMovieDTOCopyWith<ListMovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMovieDTOCopyWith<$Res> {
  factory $ListMovieDTOCopyWith(
          ListMovieDTO value, $Res Function(ListMovieDTO) then) =
      _$ListMovieDTOCopyWithImpl<$Res, ListMovieDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results', defaultValue: []) List<MovieDTO>? movies,
      @JsonKey(name: 'page', defaultValue: 1) int page});
}

/// @nodoc
class _$ListMovieDTOCopyWithImpl<$Res, $Val extends ListMovieDTO>
    implements $ListMovieDTOCopyWith<$Res> {
  _$ListMovieDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = freezed,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      movies: freezed == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieDTO>?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListNewMovieDTOImplCopyWith<$Res>
    implements $ListMovieDTOCopyWith<$Res> {
  factory _$$ListNewMovieDTOImplCopyWith(_$ListNewMovieDTOImpl value,
          $Res Function(_$ListNewMovieDTOImpl) then) =
      __$$ListNewMovieDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results', defaultValue: []) List<MovieDTO>? movies,
      @JsonKey(name: 'page', defaultValue: 1) int page});
}

/// @nodoc
class __$$ListNewMovieDTOImplCopyWithImpl<$Res>
    extends _$ListMovieDTOCopyWithImpl<$Res, _$ListNewMovieDTOImpl>
    implements _$$ListNewMovieDTOImplCopyWith<$Res> {
  __$$ListNewMovieDTOImplCopyWithImpl(
      _$ListNewMovieDTOImpl _value, $Res Function(_$ListNewMovieDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = freezed,
    Object? page = null,
  }) {
    return _then(_$ListNewMovieDTOImpl(
      movies: freezed == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieDTO>?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListNewMovieDTOImpl extends _ListNewMovieDTO {
  _$ListNewMovieDTOImpl(
      {@JsonKey(name: 'results', defaultValue: [])
      required final List<MovieDTO>? movies,
      @JsonKey(name: 'page', defaultValue: 1) required this.page})
      : _movies = movies,
        super._();

  factory _$ListNewMovieDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListNewMovieDTOImplFromJson(json);

  final List<MovieDTO>? _movies;
  @override
  @JsonKey(name: 'results', defaultValue: [])
  List<MovieDTO>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'page', defaultValue: 1)
  final int page;

  @override
  String toString() {
    return 'ListMovieDTO(movies: $movies, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListNewMovieDTOImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movies), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListNewMovieDTOImplCopyWith<_$ListNewMovieDTOImpl> get copyWith =>
      __$$ListNewMovieDTOImplCopyWithImpl<_$ListNewMovieDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListNewMovieDTOImplToJson(
      this,
    );
  }
}

abstract class _ListNewMovieDTO extends ListMovieDTO {
  factory _ListNewMovieDTO(
          {@JsonKey(name: 'results', defaultValue: [])
          required final List<MovieDTO>? movies,
          @JsonKey(name: 'page', defaultValue: 1) required final int page}) =
      _$ListNewMovieDTOImpl;
  _ListNewMovieDTO._() : super._();

  factory _ListNewMovieDTO.fromJson(Map<String, dynamic> json) =
      _$ListNewMovieDTOImpl.fromJson;

  @override
  @JsonKey(name: 'results', defaultValue: [])
  List<MovieDTO>? get movies;
  @override
  @JsonKey(name: 'page', defaultValue: 1)
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$ListNewMovieDTOImplCopyWith<_$ListNewMovieDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
