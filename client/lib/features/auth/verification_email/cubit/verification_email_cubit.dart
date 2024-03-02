import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/reset_password/repositories/reset_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_email_state.dart';
part 'verification_email_cubit.freezed.dart';

class VerificationEmailCubit extends Cubit<VerificationEmailState> {
  final ResetPasswordRepository _repository;
  VerificationEmailCubit({required ResetPasswordRepository repository})
      : _repository = repository,
        super(VerificationEmailState.initial());

  @Deprecated('IF OTP CODE')
  void codeChanged(String code) {
    emit(state.copyWith(code: code));
  }

  @Deprecated('IF OTP CODE')
  void confirmActionLink() {
    emit(state.copyWith(showErrorMessage: true));
  }

  Future<void> resendActionLink({required String email}) async {
    final loginResult = await _repository.resetPassword(
      email: email,
    );
    loginResult.fold(
      (failure) {
        emit(state.copyWith(
          authFailureOrSuccess: left(failure),
          disableResendButton: true,
        ));
      },
      (_) {
        emit(state.copyWith(
          authFailureOrSuccess: right(unit),
          disableResendButton: true,
        ));
      },
    );
  }
}
