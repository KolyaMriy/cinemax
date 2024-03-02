part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  factory LoginFormState({
    required EmailAddress emailAddress,
    required Password password,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
      );
}