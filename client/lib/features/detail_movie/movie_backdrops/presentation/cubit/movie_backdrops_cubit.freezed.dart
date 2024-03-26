// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_backdrops_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieBackdropsState {
  List<BackdropMoviesEntity> get backdrops =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieBackdropsStateCopyWith<MovieBackdropsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieBackdropsStateCopyWith<$Res> {
  factory $MovieBackdropsStateCopyWith(
          MovieBackdropsState value, $Res Function(MovieBackdropsState) then) =
      _$MovieBackdropsStateCopyWithImpl<$Res, MovieBackdropsState>;
  @useResult
  $Res call(
      {List<BackdropMoviesEntity> backdrops, bool loading, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$MovieBackdropsStateCopyWithImpl<$Res, $Val extends MovieBackdropsState>
    implements $MovieBackdropsStateCopyWith<$Res> {
  _$MovieBackdropsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: null == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<BackdropMoviesEntity>,
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
abstract class _$$MovieBackdropsStateImplCopyWith<$Res>
    implements $MovieBackdropsStateCopyWith<$Res> {
  factory _$$MovieBackdropsStateImplCopyWith(_$MovieBackdropsStateImpl value,
          $Res Function(_$MovieBackdropsStateImpl) then) =
      __$$MovieBackdropsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BackdropMoviesEntity> backdrops, bool loading, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$MovieBackdropsStateImplCopyWithImpl<$Res>
    extends _$MovieBackdropsStateCopyWithImpl<$Res, _$MovieBackdropsStateImpl>
    implements _$$MovieBackdropsStateImplCopyWith<$Res> {
  __$$MovieBackdropsStateImplCopyWithImpl(_$MovieBackdropsStateImpl _value,
      $Res Function(_$MovieBackdropsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$MovieBackdropsStateImpl(
      backdrops: null == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<BackdropMoviesEntity>,
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

class _$MovieBackdropsStateImpl extends _MovieBackdropsState {
  _$MovieBackdropsStateImpl(
      {required final List<BackdropMoviesEntity> backdrops,
      this.loading = false,
      this.failure})
      : _backdrops = backdrops,
        super._();

  final List<BackdropMoviesEntity> _backdrops;
  @override
  List<BackdropMoviesEntity> get backdrops {
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdrops);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'MovieBackdropsState(backdrops: $backdrops, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieBackdropsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_backdrops), loading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieBackdropsStateImplCopyWith<_$MovieBackdropsStateImpl> get copyWith =>
      __$$MovieBackdropsStateImplCopyWithImpl<_$MovieBackdropsStateImpl>(
          this, _$identity);
}

abstract class _MovieBackdropsState extends MovieBackdropsState {
  factory _MovieBackdropsState(
      {required final List<BackdropMoviesEntity> backdrops,
      final bool loading,
      final Failure? failure}) = _$MovieBackdropsStateImpl;
  _MovieBackdropsState._() : super._();

  @override
  List<BackdropMoviesEntity> get backdrops;
  @override
  bool get loading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$MovieBackdropsStateImplCopyWith<_$MovieBackdropsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
