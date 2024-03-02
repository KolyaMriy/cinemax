// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_movie_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailMovieState {
  MovieDetailEntity get movieDetail => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showTrailer => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailMovieStateCopyWith<DetailMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMovieStateCopyWith<$Res> {
  factory $DetailMovieStateCopyWith(
          DetailMovieState value, $Res Function(DetailMovieState) then) =
      _$DetailMovieStateCopyWithImpl<$Res, DetailMovieState>;
  @useResult
  $Res call(
      {MovieDetailEntity movieDetail,
      bool loading,
      bool showTrailer,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$DetailMovieStateCopyWithImpl<$Res, $Val extends DetailMovieState>
    implements $DetailMovieStateCopyWith<$Res> {
  _$DetailMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetail = null,
    Object? loading = null,
    Object? showTrailer = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      movieDetail: null == movieDetail
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetailEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showTrailer: null == showTrailer
          ? _value.showTrailer
          : showTrailer // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DetailMovieStateImplCopyWith<$Res>
    implements $DetailMovieStateCopyWith<$Res> {
  factory _$$DetailMovieStateImplCopyWith(_$DetailMovieStateImpl value,
          $Res Function(_$DetailMovieStateImpl) then) =
      __$$DetailMovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieDetailEntity movieDetail,
      bool loading,
      bool showTrailer,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$DetailMovieStateImplCopyWithImpl<$Res>
    extends _$DetailMovieStateCopyWithImpl<$Res, _$DetailMovieStateImpl>
    implements _$$DetailMovieStateImplCopyWith<$Res> {
  __$$DetailMovieStateImplCopyWithImpl(_$DetailMovieStateImpl _value,
      $Res Function(_$DetailMovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetail = null,
    Object? loading = null,
    Object? showTrailer = null,
    Object? failure = freezed,
  }) {
    return _then(_$DetailMovieStateImpl(
      movieDetail: null == movieDetail
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetailEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showTrailer: null == showTrailer
          ? _value.showTrailer
          : showTrailer // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$DetailMovieStateImpl implements _DetailMovieState {
  _$DetailMovieStateImpl(
      {required this.movieDetail,
      this.loading = false,
      this.showTrailer = false,
      this.failure});

  @override
  final MovieDetailEntity movieDetail;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool showTrailer;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'DetailMovieState(movieDetail: $movieDetail, loading: $loading, showTrailer: $showTrailer, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailMovieStateImpl &&
            (identical(other.movieDetail, movieDetail) ||
                other.movieDetail == movieDetail) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.showTrailer, showTrailer) ||
                other.showTrailer == showTrailer) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, movieDetail, loading, showTrailer, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailMovieStateImplCopyWith<_$DetailMovieStateImpl> get copyWith =>
      __$$DetailMovieStateImplCopyWithImpl<_$DetailMovieStateImpl>(
          this, _$identity);
}

abstract class _DetailMovieState implements DetailMovieState {
  factory _DetailMovieState(
      {required final MovieDetailEntity movieDetail,
      final bool loading,
      final bool showTrailer,
      final Failure? failure}) = _$DetailMovieStateImpl;

  @override
  MovieDetailEntity get movieDetail;
  @override
  bool get loading;
  @override
  bool get showTrailer;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$DetailMovieStateImplCopyWith<_$DetailMovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
