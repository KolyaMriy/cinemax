// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credits_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieCreditsState {
  CreditsEntity get credits => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCreditsStateCopyWith<MovieCreditsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsStateCopyWith<$Res> {
  factory $MovieCreditsStateCopyWith(
          MovieCreditsState value, $Res Function(MovieCreditsState) then) =
      _$MovieCreditsStateCopyWithImpl<$Res, MovieCreditsState>;
  @useResult
  $Res call({CreditsEntity credits, bool loading, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$MovieCreditsStateCopyWithImpl<$Res, $Val extends MovieCreditsState>
    implements $MovieCreditsStateCopyWith<$Res> {
  _$MovieCreditsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credits = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsEntity,
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
abstract class _$$MovieCreditsStateImplCopyWith<$Res>
    implements $MovieCreditsStateCopyWith<$Res> {
  factory _$$MovieCreditsStateImplCopyWith(_$MovieCreditsStateImpl value,
          $Res Function(_$MovieCreditsStateImpl) then) =
      __$$MovieCreditsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreditsEntity credits, bool loading, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$MovieCreditsStateImplCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res, _$MovieCreditsStateImpl>
    implements _$$MovieCreditsStateImplCopyWith<$Res> {
  __$$MovieCreditsStateImplCopyWithImpl(_$MovieCreditsStateImpl _value,
      $Res Function(_$MovieCreditsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credits = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$MovieCreditsStateImpl(
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsEntity,
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

class _$MovieCreditsStateImpl extends _MovieCreditsState {
  _$MovieCreditsStateImpl(
      {required this.credits, this.loading = false, this.failure})
      : super._();

  @override
  final CreditsEntity credits;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'MovieCreditsState(credits: $credits, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsStateImpl &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credits, loading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditsStateImplCopyWith<_$MovieCreditsStateImpl> get copyWith =>
      __$$MovieCreditsStateImplCopyWithImpl<_$MovieCreditsStateImpl>(
          this, _$identity);
}

abstract class _MovieCreditsState extends MovieCreditsState {
  factory _MovieCreditsState(
      {required final CreditsEntity credits,
      final bool loading,
      final Failure? failure}) = _$MovieCreditsStateImpl;
  _MovieCreditsState._() : super._();

  @override
  CreditsEntity get credits;
  @override
  bool get loading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$MovieCreditsStateImplCopyWith<_$MovieCreditsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
