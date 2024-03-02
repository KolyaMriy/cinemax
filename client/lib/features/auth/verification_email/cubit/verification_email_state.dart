part of 'verification_email_cubit.dart';


@freezed
class VerificationEmailState with _$VerificationEmailState {
  const factory VerificationEmailState({
    required String code,
    @Default(false) bool showErrorMessage,
    @Default(false) bool disableResendButton,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _VerificationEmailState;

  factory VerificationEmailState.initial() => const VerificationEmailState(
        code: '',
      );
}
