// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_switcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeSwitcherState {
  ThemeData get theme => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeSwitcherStateCopyWith<ThemeSwitcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSwitcherStateCopyWith<$Res> {
  factory $ThemeSwitcherStateCopyWith(
          ThemeSwitcherState value, $Res Function(ThemeSwitcherState) then) =
      _$ThemeSwitcherStateCopyWithImpl<$Res, ThemeSwitcherState>;
  @useResult
  $Res call({ThemeData theme, bool isDarkMode, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ThemeSwitcherStateCopyWithImpl<$Res, $Val extends ThemeSwitcherState>
    implements $ThemeSwitcherStateCopyWith<$Res> {
  _$ThemeSwitcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? isDarkMode = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ThemeSwitcherStateImplCopyWith<$Res>
    implements $ThemeSwitcherStateCopyWith<$Res> {
  factory _$$ThemeSwitcherStateImplCopyWith(_$ThemeSwitcherStateImpl value,
          $Res Function(_$ThemeSwitcherStateImpl) then) =
      __$$ThemeSwitcherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData theme, bool isDarkMode, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$ThemeSwitcherStateImplCopyWithImpl<$Res>
    extends _$ThemeSwitcherStateCopyWithImpl<$Res, _$ThemeSwitcherStateImpl>
    implements _$$ThemeSwitcherStateImplCopyWith<$Res> {
  __$$ThemeSwitcherStateImplCopyWithImpl(_$ThemeSwitcherStateImpl _value,
      $Res Function(_$ThemeSwitcherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? isDarkMode = null,
    Object? failure = freezed,
  }) {
    return _then(_$ThemeSwitcherStateImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ThemeSwitcherStateImpl implements _ThemeSwitcherState {
  _$ThemeSwitcherStateImpl(
      {required this.theme, this.isDarkMode = true, this.failure});

  @override
  final ThemeData theme;
  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ThemeSwitcherState(theme: $theme, isDarkMode: $isDarkMode, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSwitcherStateImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, isDarkMode, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSwitcherStateImplCopyWith<_$ThemeSwitcherStateImpl> get copyWith =>
      __$$ThemeSwitcherStateImplCopyWithImpl<_$ThemeSwitcherStateImpl>(
          this, _$identity);
}

abstract class _ThemeSwitcherState implements ThemeSwitcherState {
  factory _ThemeSwitcherState(
      {required final ThemeData theme,
      final bool isDarkMode,
      final Failure? failure}) = _$ThemeSwitcherStateImpl;

  @override
  ThemeData get theme;
  @override
  bool get isDarkMode;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ThemeSwitcherStateImplCopyWith<_$ThemeSwitcherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
