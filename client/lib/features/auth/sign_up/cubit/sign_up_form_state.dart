part of 'sign_up_form_cubit.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required EmailAddress emailAddress,
    required Password password,
    required Input name,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(true) bool agreeTerms,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        name: Input(''),
      );
}
