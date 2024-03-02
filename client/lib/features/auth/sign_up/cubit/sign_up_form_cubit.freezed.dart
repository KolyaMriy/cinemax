// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Input get name => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get agreeTerms => throw _privateConstructorUsedError;
  Either<AuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res, SignUpFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Input name,
      bool isSubmitting,
      bool showErrorMessage,
      bool agreeTerms,
      Either<AuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res, $Val extends SignUpFormState>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? agreeTerms = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Input,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms: null == agreeTerms
          ? _value.agreeTerms
          : agreeTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpFormStateImplCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$$SignUpFormStateImplCopyWith(_$SignUpFormStateImpl value,
          $Res Function(_$SignUpFormStateImpl) then) =
      __$$SignUpFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Input name,
      bool isSubmitting,
      bool showErrorMessage,
      bool agreeTerms,
      Either<AuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class __$$SignUpFormStateImplCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res, _$SignUpFormStateImpl>
    implements _$$SignUpFormStateImplCopyWith<$Res> {
  __$$SignUpFormStateImplCopyWithImpl(
      _$SignUpFormStateImpl _value, $Res Function(_$SignUpFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? agreeTerms = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$SignUpFormStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Input,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms: null == agreeTerms
          ? _value.agreeTerms
          : agreeTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$SignUpFormStateImpl implements _SignUpFormState {
  const _$SignUpFormStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.name,
      this.isSubmitting = false,
      this.showErrorMessage = false,
      this.agreeTerms = true,
      this.authFailureOrSuccess});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Input name;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  @JsonKey()
  final bool agreeTerms;
  @override
  final Either<AuthFailure, Unit>? authFailureOrSuccess;

  @override
  String toString() {
    return 'SignUpFormState(emailAddress: $emailAddress, password: $password, name: $name, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, agreeTerms: $agreeTerms, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.agreeTerms, agreeTerms) ||
                other.agreeTerms == agreeTerms) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password, name,
      isSubmitting, showErrorMessage, agreeTerms, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      __$$SignUpFormStateImplCopyWithImpl<_$SignUpFormStateImpl>(
          this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
          {required final EmailAddress emailAddress,
          required final Password password,
          required final Input name,
          final bool isSubmitting,
          final bool showErrorMessage,
          final bool agreeTerms,
          final Either<AuthFailure, Unit>? authFailureOrSuccess}) =
      _$SignUpFormStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Input get name;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  bool get agreeTerms;
  @override
  Either<AuthFailure, Unit>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
