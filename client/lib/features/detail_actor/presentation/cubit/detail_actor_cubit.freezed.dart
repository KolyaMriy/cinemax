// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_actor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailActorState {
  DetailActorEntity? get actor => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailActorStateCopyWith<DetailActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailActorStateCopyWith<$Res> {
  factory $DetailActorStateCopyWith(
          DetailActorState value, $Res Function(DetailActorState) then) =
      _$DetailActorStateCopyWithImpl<$Res, DetailActorState>;
  @useResult
  $Res call({DetailActorEntity? actor, Failure? failure, bool loading});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$DetailActorStateCopyWithImpl<$Res, $Val extends DetailActorState>
    implements $DetailActorStateCopyWith<$Res> {
  _$DetailActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = freezed,
    Object? failure = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as DetailActorEntity?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$DetailActorStateImplCopyWith<$Res>
    implements $DetailActorStateCopyWith<$Res> {
  factory _$$DetailActorStateImplCopyWith(_$DetailActorStateImpl value,
          $Res Function(_$DetailActorStateImpl) then) =
      __$$DetailActorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailActorEntity? actor, Failure? failure, bool loading});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$DetailActorStateImplCopyWithImpl<$Res>
    extends _$DetailActorStateCopyWithImpl<$Res, _$DetailActorStateImpl>
    implements _$$DetailActorStateImplCopyWith<$Res> {
  __$$DetailActorStateImplCopyWithImpl(_$DetailActorStateImpl _value,
      $Res Function(_$DetailActorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = freezed,
    Object? failure = freezed,
    Object? loading = null,
  }) {
    return _then(_$DetailActorStateImpl(
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as DetailActorEntity?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailActorStateImpl implements _DetailActorState {
  _$DetailActorStateImpl({this.actor, this.failure, this.loading = false});

  @override
  final DetailActorEntity? actor;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'DetailActorState(actor: $actor, failure: $failure, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailActorStateImpl &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actor, failure, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailActorStateImplCopyWith<_$DetailActorStateImpl> get copyWith =>
      __$$DetailActorStateImplCopyWithImpl<_$DetailActorStateImpl>(
          this, _$identity);
}

abstract class _DetailActorState implements DetailActorState {
  factory _DetailActorState(
      {final DetailActorEntity? actor,
      final Failure? failure,
      final bool loading}) = _$DetailActorStateImpl;

  @override
  DetailActorEntity? get actor;
  @override
  Failure? get failure;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$DetailActorStateImplCopyWith<_$DetailActorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
