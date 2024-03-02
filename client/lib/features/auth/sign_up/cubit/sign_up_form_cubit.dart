import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/core/validator/email/email.dart';
import 'package:client/core/validator/name/name.dart';
import 'package:client/core/validator/password/password.dart';
import 'package:client/features/auth/sign_up/repositories/sign_up_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_form_cubit.freezed.dart';
part 'sign_up_form_state.dart';

class SignUpFormCubit extends Cubit<SignUpFormState> {
  final SignUpRepository _repository;
  SignUpFormCubit({required SignUpRepository repository})
      : _repository = repository,
        super(SignUpFormState.initial());

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

  void nameChanged(String name) {
    emit(state.copyWith(
      name: Input(name),
      authFailureOrSuccess: null,
    ));
  }

  void agreeTermsToggled() {
    emit(state.copyWith(agreeTerms: !state.agreeTerms));
    debugPrint('isAgreeTerms ${state.agreeTerms.toString()}');
  }

  Future<void> signUpSubmitted() async {
    final isEmailValid = state.emailAddress.value.isRight();
    final isPasswordValid = state.password.value.isRight();
    final isNameValid = state.name.value.isRight();
    final isAgreeTerms = state.agreeTerms;

    if (isEmailValid && isPasswordValid && isNameValid && isAgreeTerms) {
      final loginResult = await _repository.signUp(
          email: state.emailAddress.value.getOrElse(() => 'null'),
          password: state.password.value.getOrElse(() => 'null'),
          name: state.name.value.getOrElse(() => 'null'));

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
            (isEmailValid && isPasswordValid && isNameValid && isAgreeTerms)
                ? right(unit)
                : left(const AuthFailure.serverError()),
      ),
    );
  }
}
