part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  factory ResetPasswordState({
    required EmailAddress emailAddress,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
        emailAddress: EmailAddress(''),
      );
}
