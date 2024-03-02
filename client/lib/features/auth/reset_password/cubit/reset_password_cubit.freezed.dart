// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Either<AuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitting,
      bool showErrorMessage,
      Either<AuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordStateImplCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$ResetPasswordStateImplCopyWith(_$ResetPasswordStateImpl value,
          $Res Function(_$ResetPasswordStateImpl) then) =
      __$$ResetPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitting,
      bool showErrorMessage,
      Either<AuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class __$$ResetPasswordStateImplCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$ResetPasswordStateImpl>
    implements _$$ResetPasswordStateImplCopyWith<$Res> {
  __$$ResetPasswordStateImplCopyWithImpl(_$ResetPasswordStateImpl _value,
      $Res Function(_$ResetPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$ResetPasswordStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$ResetPasswordStateImpl implements _ResetPasswordState {
  _$ResetPasswordStateImpl(
      {required this.emailAddress,
      this.isSubmitting = false,
      this.showErrorMessage = false,
      this.authFailureOrSuccess});

  @override
  final EmailAddress emailAddress;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  final Either<AuthFailure, Unit>? authFailureOrSuccess;

  @override
  String toString() {
    return 'ResetPasswordState(emailAddress: $emailAddress, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, isSubmitting,
      showErrorMessage, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordStateImplCopyWith<_$ResetPasswordStateImpl> get copyWith =>
      __$$ResetPasswordStateImplCopyWithImpl<_$ResetPasswordStateImpl>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  factory _ResetPasswordState(
          {required final EmailAddress emailAddress,
          final bool isSubmitting,
          final bool showErrorMessage,
          final Either<AuthFailure, Unit>? authFailureOrSuccess}) =
      _$ResetPasswordStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  Either<AuthFailure, Unit>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordStateImplCopyWith<_$ResetPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
