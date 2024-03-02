// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movie_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchMovieState {
  ListMovieEntity get movie => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMovieStateCopyWith<SearchMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieStateCopyWith<$Res> {
  factory $SearchMovieStateCopyWith(
          SearchMovieState value, $Res Function(SearchMovieState) then) =
      _$SearchMovieStateCopyWithImpl<$Res, SearchMovieState>;
  @useResult
  $Res call(
      {ListMovieEntity movie, String query, bool loading, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$SearchMovieStateCopyWithImpl<$Res, $Val extends SearchMovieState>
    implements $SearchMovieStateCopyWith<$Res> {
  _$SearchMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? query = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as ListMovieEntity,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$SearchMovieStateImplCopyWith<$Res>
    implements $SearchMovieStateCopyWith<$Res> {
  factory _$$SearchMovieStateImplCopyWith(_$SearchMovieStateImpl value,
          $Res Function(_$SearchMovieStateImpl) then) =
      __$$SearchMovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListMovieEntity movie, String query, bool loading, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$SearchMovieStateImplCopyWithImpl<$Res>
    extends _$SearchMovieStateCopyWithImpl<$Res, _$SearchMovieStateImpl>
    implements _$$SearchMovieStateImplCopyWith<$Res> {
  __$$SearchMovieStateImplCopyWithImpl(_$SearchMovieStateImpl _value,
      $Res Function(_$SearchMovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? query = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SearchMovieStateImpl(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as ListMovieEntity,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$SearchMovieStateImpl extends _SearchMovieState {
  _$SearchMovieStateImpl(
      {this.movie = const ListMovieEntity(movies: [], page: 0),
      this.query = '',
      this.loading = false,
      this.failure})
      : super._();

  @override
  @JsonKey()
  final ListMovieEntity movie;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SearchMovieState(movie: $movie, query: $query, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieStateImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, query, loading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieStateImplCopyWith<_$SearchMovieStateImpl> get copyWith =>
      __$$SearchMovieStateImplCopyWithImpl<_$SearchMovieStateImpl>(
          this, _$identity);
}

abstract class _SearchMovieState extends SearchMovieState {
  factory _SearchMovieState(
      {final ListMovieEntity movie,
      final String query,
      final bool loading,
      final Failure? failure}) = _$SearchMovieStateImpl;
  _SearchMovieState._() : super._();

  @override
  ListMovieEntity get movie;
  @override
  String get query;
  @override
  bool get loading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SearchMovieStateImplCopyWith<_$SearchMovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
