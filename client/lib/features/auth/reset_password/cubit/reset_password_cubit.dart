import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/core/validator/email/email.dart';
import 'package:client/features/auth/reset_password/repositories/reset_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_state.dart';

part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepository _repository;
  ResetPasswordCubit({required ResetPasswordRepository repository})
      : _repository = repository,
        super(ResetPasswordState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccess: null,
    ));
  }

  Future<void> resetPasswordSubmitted() async {
    final isEmailValid = state.emailAddress.value.isRight();

    if (isEmailValid) {
      final loginResult = await _repository.resetPassword(
        email: state.emailAddress.value.getOrElse(() => 'null'),
      );

      loginResult.fold(
        (failure) {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: left(failure),
          ));
        },
        (_) {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: right(unit),
          ));
        },
      );
      return;
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSuccess:
            isEmailValid ? right(unit) : left(const AuthFailure.serverError()),
      ),
    );
  }
}
