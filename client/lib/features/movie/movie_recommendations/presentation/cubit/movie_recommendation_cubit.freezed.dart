// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_recommendation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieRecommendationState {
  ListMovieEntity get movieRecommendations =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieRecommendationStateCopyWith<MovieRecommendationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieRecommendationStateCopyWith<$Res> {
  factory $MovieRecommendationStateCopyWith(MovieRecommendationState value,
          $Res Function(MovieRecommendationState) then) =
      _$MovieRecommendationStateCopyWithImpl<$Res, MovieRecommendationState>;
  @useResult
  $Res call(
      {ListMovieEntity movieRecommendations, bool loading, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$MovieRecommendationStateCopyWithImpl<$Res,
        $Val extends MovieRecommendationState>
    implements $MovieRecommendationStateCopyWith<$Res> {
  _$MovieRecommendationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieRecommendations = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      movieRecommendations: null == movieRecommendations
          ? _value.movieRecommendations
          : movieRecommendations // ignore: cast_nullable_to_non_nullable
              as ListMovieEntity,
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
abstract class _$$MovieRecommendationStateImplCopyWith<$Res>
    implements $MovieRecommendationStateCopyWith<$Res> {
  factory _$$MovieRecommendationStateImplCopyWith(
          _$MovieRecommendationStateImpl value,
          $Res Function(_$MovieRecommendationStateImpl) then) =
      __$$MovieRecommendationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListMovieEntity movieRecommendations, bool loading, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$MovieRecommendationStateImplCopyWithImpl<$Res>
    extends _$MovieRecommendationStateCopyWithImpl<$Res,
        _$MovieRecommendationStateImpl>
    implements _$$MovieRecommendationStateImplCopyWith<$Res> {
  __$$MovieRecommendationStateImplCopyWithImpl(
      _$MovieRecommendationStateImpl _value,
      $Res Function(_$MovieRecommendationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieRecommendations = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$MovieRecommendationStateImpl(
      movieRecommendations: null == movieRecommendations
          ? _value.movieRecommendations
          : movieRecommendations // ignore: cast_nullable_to_non_nullable
              as ListMovieEntity,
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

class _$MovieRecommendationStateImpl extends _MovieRecommendationState {
  _$MovieRecommendationStateImpl(
      {required this.movieRecommendations, this.loading = false, this.failure})
      : super._();

  @override
  final ListMovieEntity movieRecommendations;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'MovieRecommendationState(movieRecommendations: $movieRecommendations, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieRecommendationStateImpl &&
            (identical(other.movieRecommendations, movieRecommendations) ||
                other.movieRecommendations == movieRecommendations) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, movieRecommendations, loading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieRecommendationStateImplCopyWith<_$MovieRecommendationStateImpl>
      get copyWith => __$$MovieRecommendationStateImplCopyWithImpl<
          _$MovieRecommendationStateImpl>(this, _$identity);
}

abstract class _MovieRecommendationState extends MovieRecommendationState {
  factory _MovieRecommendationState(
      {required final ListMovieEntity movieRecommendations,
      final bool loading,
      final Failure? failure}) = _$MovieRecommendationStateImpl;
  _MovieRecommendationState._() : super._();

  @override
  ListMovieEntity get movieRecommendations;
  @override
  bool get loading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$MovieRecommendationStateImplCopyWith<_$MovieRecommendationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
