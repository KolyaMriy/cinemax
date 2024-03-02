// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_genre_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopularMoviesGenreState {
  ListMovieEntity get listPopularGenreMovie =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  GenreEntity get currentGenre => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularMoviesGenreStateCopyWith<PopularMoviesGenreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesGenreStateCopyWith<$Res> {
  factory $PopularMoviesGenreStateCopyWith(PopularMoviesGenreState value,
          $Res Function(PopularMoviesGenreState) then) =
      _$PopularMoviesGenreStateCopyWithImpl<$Res, PopularMoviesGenreState>;
  @useResult
  $Res call(
      {ListMovieEntity listPopularGenreMovie,
      bool loading,
      GenreEntity currentGenre,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$PopularMoviesGenreStateCopyWithImpl<$Res,
        $Val extends PopularMoviesGenreState>
    implements $PopularMoviesGenreStateCopyWith<$Res> {
  _$PopularMoviesGenreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPopularGenreMovie = null,
    Object? loading = null,
    Object? currentGenre = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      listPopularGenreMovie: null == listPopularGenreMovie
          ? _value.listPopularGenreMovie
          : listPopularGenreMovie // ignore: cast_nullable_to_non_nullable
              as ListMovieEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentGenre: null == currentGenre
          ? _value.currentGenre
          : currentGenre // ignore: cast_nullable_to_non_nullable
              as GenreEntity,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PopularMoviesGenreStateImplCopyWith<$Res>
    implements $PopularMoviesGenreStateCopyWith<$Res> {
  factory _$$PopularMoviesGenreStateImplCopyWith(
          _$PopularMoviesGenreStateImpl value,
          $Res Function(_$PopularMoviesGenreStateImpl) then) =
      __$$PopularMoviesGenreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListMovieEntity listPopularGenreMovie,
      bool loading,
      GenreEntity currentGenre,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$PopularMoviesGenreStateImplCopyWithImpl<$Res>
    extends _$PopularMoviesGenreStateCopyWithImpl<$Res,
        _$PopularMoviesGenreStateImpl>
    implements _$$PopularMoviesGenreStateImplCopyWith<$Res> {
  __$$PopularMoviesGenreStateImplCopyWithImpl(
      _$PopularMoviesGenreStateImpl _value,
      $Res Function(_$PopularMoviesGenreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPopularGenreMovie = null,
    Object? loading = null,
    Object? currentGenre = null,
    Object? failure = freezed,
  }) {
    return _then(_$PopularMoviesGenreStateImpl(
      listPopularGenreMovie: null == listPopularGenreMovie
          ? _value.listPopularGenreMovie
          : listPopularGenreMovie // ignore: cast_nullable_to_non_nullable
              as ListMovieEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentGenre: null == currentGenre
          ? _value.currentGenre
          : currentGenre // ignore: cast_nullable_to_non_nullable
              as GenreEntity,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$PopularMoviesGenreStateImpl implements _PopularMoviesGenreState {
  const _$PopularMoviesGenreStateImpl(
      {required this.listPopularGenreMovie,
      this.loading = false,
      this.currentGenre = const GenreEntity(id: 0, name: 'All'),
      this.failure});

  @override
  final ListMovieEntity listPopularGenreMovie;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final GenreEntity currentGenre;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'PopularMoviesGenreState(listPopularGenreMovie: $listPopularGenreMovie, loading: $loading, currentGenre: $currentGenre, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesGenreStateImpl &&
            (identical(other.listPopularGenreMovie, listPopularGenreMovie) ||
                other.listPopularGenreMovie == listPopularGenreMovie) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.currentGenre, currentGenre) ||
                other.currentGenre == currentGenre) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, listPopularGenreMovie, loading, currentGenre, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesGenreStateImplCopyWith<_$PopularMoviesGenreStateImpl>
      get copyWith => __$$PopularMoviesGenreStateImplCopyWithImpl<
          _$PopularMoviesGenreStateImpl>(this, _$identity);
}

abstract class _PopularMoviesGenreState implements PopularMoviesGenreState {
  const factory _PopularMoviesGenreState(
      {required final ListMovieEntity listPopularGenreMovie,
      final bool loading,
      final GenreEntity currentGenre,
      final Failure? failure}) = _$PopularMoviesGenreStateImpl;

  @override
  ListMovieEntity get listPopularGenreMovie;
  @override
  bool get loading;
  @override
  GenreEntity get currentGenre;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$PopularMoviesGenreStateImplCopyWith<_$PopularMoviesGenreStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
