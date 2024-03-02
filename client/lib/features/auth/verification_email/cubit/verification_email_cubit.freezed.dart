// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationEmailState {
  String get code => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get disableResendButton => throw _privateConstructorUsedError;
  Either<AuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationEmailStateCopyWith<VerificationEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEmailStateCopyWith<$Res> {
  factory $VerificationEmailStateCopyWith(VerificationEmailState value,
          $Res Function(VerificationEmailState) then) =
      _$VerificationEmailStateCopyWithImpl<$Res, VerificationEmailState>;
  @useResult
  $Res call(
      {String code,
      bool showErrorMessage,
      bool disableResendButton,
      Either<AuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class _$VerificationEmailStateCopyWithImpl<$Res,
        $Val extends VerificationEmailState>
    implements $VerificationEmailStateCopyWith<$Res> {
  _$VerificationEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? showErrorMessage = null,
    Object? disableResendButton = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      disableResendButton: null == disableResendButton
          ? _value.disableResendButton
          : disableResendButton // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationEmailStateImplCopyWith<$Res>
    implements $VerificationEmailStateCopyWith<$Res> {
  factory _$$VerificationEmailStateImplCopyWith(
          _$VerificationEmailStateImpl value,
          $Res Function(_$VerificationEmailStateImpl) then) =
      __$$VerificationEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      bool showErrorMessage,
      bool disableResendButton,
      Either<AuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class __$$VerificationEmailStateImplCopyWithImpl<$Res>
    extends _$VerificationEmailStateCopyWithImpl<$Res,
        _$VerificationEmailStateImpl>
    implements _$$VerificationEmailStateImplCopyWith<$Res> {
  __$$VerificationEmailStateImplCopyWithImpl(
      _$VerificationEmailStateImpl _value,
      $Res Function(_$VerificationEmailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? showErrorMessage = null,
    Object? disableResendButton = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$VerificationEmailStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      disableResendButton: null == disableResendButton
          ? _value.disableResendButton
          : disableResendButton // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$VerificationEmailStateImpl implements _VerificationEmailState {
  const _$VerificationEmailStateImpl(
      {required this.code,
      this.showErrorMessage = false,
      this.disableResendButton = false,
      this.authFailureOrSuccess});

  @override
  final String code;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  @JsonKey()
  final bool disableResendButton;
  @override
  final Either<AuthFailure, Unit>? authFailureOrSuccess;

  @override
  String toString() {
    return 'VerificationEmailState(code: $code, showErrorMessage: $showErrorMessage, disableResendButton: $disableResendButton, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationEmailStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.disableResendButton, disableResendButton) ||
                other.disableResendButton == disableResendButton) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, showErrorMessage,
      disableResendButton, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationEmailStateImplCopyWith<_$VerificationEmailStateImpl>
      get copyWith => __$$VerificationEmailStateImplCopyWithImpl<
          _$VerificationEmailStateImpl>(this, _$identity);
}

abstract class _VerificationEmailState implements VerificationEmailState {
  const factory _VerificationEmailState(
          {required final String code,
          final bool showErrorMessage,
          final bool disableResendButton,
          final Either<AuthFailure, Unit>? authFailureOrSuccess}) =
      _$VerificationEmailStateImpl;

  @override
  String get code;
  @override
  bool get showErrorMessage;
  @override
  bool get disableResendButton;
  @override
  Either<AuthFailure, Unit>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$VerificationEmailStateImplCopyWith<_$VerificationEmailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
