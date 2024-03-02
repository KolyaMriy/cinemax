import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/core/validator/email/email.dart';
import 'package:client/core/validator/password/password.dart';
import 'package:client/features/auth/login/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  final LoginRepository _repository;
  LoginFormCubit({required LoginRepository repository})
      : _repository = repository,
        super(LoginFormState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccess: null,
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
      password: Password(password),
      authFailureOrSuccess: null,
    ));
  }

  Future<void> loginSubmitted() async {
    final isEmailValid = state.emailAddress.value.isRight();
    final isPasswordValid = state.password.value.isRight();

    if (isEmailValid && isPasswordValid) {
      final loginResult = await _repository.loginWithEmailAndPassword(
          email: state.emailAddress.value.getOrElse(() => 'null'),
          password: state.password.value.getOrElse(() => 'null'));

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
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessage: true,
          authFailureOrSuccess: (isEmailValid && isPasswordValid)
              ? right(unit)
              : left(const AuthFailure.serverError()),
        ),
      );
    }
  }
}
