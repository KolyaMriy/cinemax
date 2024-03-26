// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_trailer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieTrailerState {
  YouTubeTrailerEntity get movieTrailer => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get startPlayer => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieTrailerStateCopyWith<MovieTrailerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrailerStateCopyWith<$Res> {
  factory $MovieTrailerStateCopyWith(
          MovieTrailerState value, $Res Function(MovieTrailerState) then) =
      _$MovieTrailerStateCopyWithImpl<$Res, MovieTrailerState>;
  @useResult
  $Res call(
      {YouTubeTrailerEntity movieTrailer,
      bool loading,
      bool startPlayer,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$MovieTrailerStateCopyWithImpl<$Res, $Val extends MovieTrailerState>
    implements $MovieTrailerStateCopyWith<$Res> {
  _$MovieTrailerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieTrailer = null,
    Object? loading = null,
    Object? startPlayer = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      movieTrailer: null == movieTrailer
          ? _value.movieTrailer
          : movieTrailer // ignore: cast_nullable_to_non_nullable
              as YouTubeTrailerEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      startPlayer: null == startPlayer
          ? _value.startPlayer
          : startPlayer // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MovieTrailerStateImplCopyWith<$Res>
    implements $MovieTrailerStateCopyWith<$Res> {
  factory _$$MovieTrailerStateImplCopyWith(_$MovieTrailerStateImpl value,
          $Res Function(_$MovieTrailerStateImpl) then) =
      __$$MovieTrailerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {YouTubeTrailerEntity movieTrailer,
      bool loading,
      bool startPlayer,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$MovieTrailerStateImplCopyWithImpl<$Res>
    extends _$MovieTrailerStateCopyWithImpl<$Res, _$MovieTrailerStateImpl>
    implements _$$MovieTrailerStateImplCopyWith<$Res> {
  __$$MovieTrailerStateImplCopyWithImpl(_$MovieTrailerStateImpl _value,
      $Res Function(_$MovieTrailerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieTrailer = null,
    Object? loading = null,
    Object? startPlayer = null,
    Object? failure = freezed,
  }) {
    return _then(_$MovieTrailerStateImpl(
      movieTrailer: null == movieTrailer
          ? _value.movieTrailer
          : movieTrailer // ignore: cast_nullable_to_non_nullable
              as YouTubeTrailerEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      startPlayer: null == startPlayer
          ? _value.startPlayer
          : startPlayer // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$MovieTrailerStateImpl extends _MovieTrailerState {
  _$MovieTrailerStateImpl(
      {required this.movieTrailer,
      this.loading = false,
      this.startPlayer = false,
      this.failure})
      : super._();

  @override
  final YouTubeTrailerEntity movieTrailer;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool startPlayer;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'MovieTrailerState(movieTrailer: $movieTrailer, loading: $loading, startPlayer: $startPlayer, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieTrailerStateImpl &&
            (identical(other.movieTrailer, movieTrailer) ||
                other.movieTrailer == movieTrailer) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.startPlayer, startPlayer) ||
                other.startPlayer == startPlayer) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, movieTrailer, loading, startPlayer, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieTrailerStateImplCopyWith<_$MovieTrailerStateImpl> get copyWith =>
      __$$MovieTrailerStateImplCopyWithImpl<_$MovieTrailerStateImpl>(
          this, _$identity);
}

abstract class _MovieTrailerState extends MovieTrailerState {
  factory _MovieTrailerState(
      {required final YouTubeTrailerEntity movieTrailer,
      final bool loading,
      final bool startPlayer,
      final Failure? failure}) = _$MovieTrailerStateImpl;
  _MovieTrailerState._() : super._();

  @override
  YouTubeTrailerEntity get movieTrailer;
  @override
  bool get loading;
  @override
  bool get startPlayer;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$MovieTrailerStateImplCopyWith<_$MovieTrailerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
