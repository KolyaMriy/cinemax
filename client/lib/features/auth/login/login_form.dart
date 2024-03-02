import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/auth/login/cubit/login_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DependencyProvider.get<LoginFormCubit>(),
      child: BlocConsumer<LoginFormCubit, LoginFormState>(
          builder: (context, state) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              InputField(
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: state.showErrorMessage == true
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                labelText: 'Email Address',
                validator: (_) => state.emailAddress.value.fold<String?>(
                  (f) => f.maybeMap<String?>(
                    invalidEmail: (_) => '*Invalid Email',
                    emptyValue: (_) => '*required value',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
                onChanged: (email) =>
                    context.read<LoginFormCubit>().emailChanged(email),
              ),
              SizedBox(height: context.spacerStyle.height),
              InputField(
                keyboardType: TextInputType.visiblePassword,
                validator: (_) => state.password.value.fold<String?>(
                  (f) => f.maybeMap<String?>(
                    invalidPasswordFormat: (_) => '*Invalid password format',
                    shortInput: (_) => '*value is short',
                    emptyValue: (_) => '*required value',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
                autovalidateMode: state.showErrorMessage == true
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                labelText: 'Password',
                isPassword: true,
                onChanged: (password) =>
                    context.read<LoginFormCubit>().passwordChanged(password),
              ),
              SizedBox(
                width: 150,
                child: CinemaxTextButton(
                    label: 'Forgot Password?',
                    fontSize: 13,
                    onPressed: () => context.goNamed(
                          AppRouterName.resetPasswordName,
                        )),
              ),
              const Spacer(),
              CinemaxFilledButton(
                label: 'Login',
                onPressed: () async {
                  await context.read<LoginFormCubit>().loginSubmitted();
                },
              ),
              const Spacer(),
            ],
          ),
        );
      }, listener: (context, state) {
        if (state.authFailureOrSuccess != null) {
          state.authFailureOrSuccess!.fold(
            (failure) {
              // Обработка ошибки аутентификации
              debugPrint('Ошибка аутентификации: $failure');
            },
            (success) {
              // Обработка успешной аутентификации
              context.goNamed(AppRouterName.homeName);
            },
          );
        }
      }),
    );
  }
}
