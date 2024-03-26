// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenreListState {
  List<GenreEntity> get listGenre => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenreListStateCopyWith<GenreListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreListStateCopyWith<$Res> {
  factory $GenreListStateCopyWith(
          GenreListState value, $Res Function(GenreListState) then) =
      _$GenreListStateCopyWithImpl<$Res, GenreListState>;
  @useResult
  $Res call({List<GenreEntity> listGenre, bool loading, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$GenreListStateCopyWithImpl<$Res, $Val extends GenreListState>
    implements $GenreListStateCopyWith<$Res> {
  _$GenreListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listGenre = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      listGenre: null == listGenre
          ? _value.listGenre
          : listGenre // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>,
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
abstract class _$$GenreListStateImplCopyWith<$Res>
    implements $GenreListStateCopyWith<$Res> {
  factory _$$GenreListStateImplCopyWith(_$GenreListStateImpl value,
          $Res Function(_$GenreListStateImpl) then) =
      __$$GenreListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GenreEntity> listGenre, bool loading, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$GenreListStateImplCopyWithImpl<$Res>
    extends _$GenreListStateCopyWithImpl<$Res, _$GenreListStateImpl>
    implements _$$GenreListStateImplCopyWith<$Res> {
  __$$GenreListStateImplCopyWithImpl(
      _$GenreListStateImpl _value, $Res Function(_$GenreListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listGenre = null,
    Object? loading = null,
    Object? failure = freezed,
  }) {
    return _then(_$GenreListStateImpl(
      listGenre: null == listGenre
          ? _value._listGenre
          : listGenre // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>,
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

class _$GenreListStateImpl implements _GenreListState {
  const _$GenreListStateImpl(
      {final List<GenreEntity> listGenre = const [],
      this.loading = false,
      this.failure})
      : _listGenre = listGenre;

  final List<GenreEntity> _listGenre;
  @override
  @JsonKey()
  List<GenreEntity> get listGenre {
    if (_listGenre is EqualUnmodifiableListView) return _listGenre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listGenre);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'GenreListState(listGenre: $listGenre, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listGenre, _listGenre) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listGenre), loading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreListStateImplCopyWith<_$GenreListStateImpl> get copyWith =>
      __$$GenreListStateImplCopyWithImpl<_$GenreListStateImpl>(
          this, _$identity);
}

abstract class _GenreListState implements GenreListState {
  const factory _GenreListState(
      {final List<GenreEntity> listGenre,
      final bool loading,
      final Failure? failure}) = _$GenreListStateImpl;

  @override
  List<GenreEntity> get listGenre;
  @override
  bool get loading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$GenreListStateImplCopyWith<_$GenreListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
