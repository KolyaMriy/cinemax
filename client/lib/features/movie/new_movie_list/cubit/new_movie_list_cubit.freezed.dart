// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_movie_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewMovieListState {
  ListMovieEntity get listNewMovie => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewMovieListStateCopyWith<NewMovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMovieListStateCopyWith<$Res> {
  factory $NewMovieListStateCopyWith(
          NewMovieListState value, $Res Function(NewMovieListState) then) =
      _$NewMovieListStateCopyWithImpl<$Res, NewMovieListState>;
  @useResult
  $Res call({ListMovieEntity listNewMovie, bool loading, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$NewMovieListStateCopyWithImpl<$Res, $Val extends NewMovieListState>
    implements $NewMovieListStateCopyWith<$Res> {
  _$NewMovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNewMovie = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      listNewMovie: null == listNewMovie
          ? _value.listNewMovie
          : listNewMovie // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NewMovieListStateImplCopyWith<$Res>
    implements $NewMovieListStateCopyWith<$Res> {
  factory _$$NewMovieListStateImplCopyWith(_$NewMovieListStateImpl value,
          $Res Function(_$NewMovieListStateImpl) then) =
      __$$NewMovieListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListMovieEntity listNewMovie, bool loading, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$NewMovieListStateImplCopyWithImpl<$Res>
    extends _$NewMovieListStateCopyWithImpl<$Res, _$NewMovieListStateImpl>
    implements _$$NewMovieListStateImplCopyWith<$Res> {
  __$$NewMovieListStateImplCopyWithImpl(_$NewMovieListStateImpl _value,
      $Res Function(_$NewMovieListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNewMovie = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$NewMovieListStateImpl(
      listNewMovie: null == listNewMovie
          ? _value.listNewMovie
          : listNewMovie // ignore: cast_nullable_to_non_nullable
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

class _$NewMovieListStateImpl implements _NewMovieListState {
  const _$NewMovieListStateImpl(
      {required this.listNewMovie, this.loading = false, this.failure});

  @override
  final ListMovieEntity listNewMovie;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'NewMovieListState(listNewMovie: $listNewMovie, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMovieListStateImpl &&
            (identical(other.listNewMovie, listNewMovie) ||
                other.listNewMovie == listNewMovie) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listNewMovie, loading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMovieListStateImplCopyWith<_$NewMovieListStateImpl> get copyWith =>
      __$$NewMovieListStateImplCopyWithImpl<_$NewMovieListStateImpl>(
          this, _$identity);
}

abstract class _NewMovieListState implements NewMovieListState {
  const factory _NewMovieListState(
      {required final ListMovieEntity listNewMovie,
      final bool loading,
      final Failure? failure}) = _$NewMovieListStateImpl;

  @override
  ListMovieEntity get listNewMovie;
  @override
  bool get loading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$NewMovieListStateImplCopyWith<_$NewMovieListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
