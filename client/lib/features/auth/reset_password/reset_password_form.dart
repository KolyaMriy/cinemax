import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/auth/reset_password/cubit/reset_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/component.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DependencyProvider.get<ResetPasswordCubit>(),
      child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
          builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InputField(
              autovalidateMode: state.showErrorMessage == true
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              labelText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              validator: (_) => state.emailAddress.value.fold<String?>(
                (f) => f.maybeMap<String?>(
                  invalidEmail: (_) => '*Invalid Email',
                  emptyValue: (_) => '*required value',
                  orElse: () => null,
                ),
                (_) => null,
              ),
              onChanged: (email) =>
                  context.read<ResetPasswordCubit>().emailChanged(email),
            ),
            CinemaxFilledButton(
              label: 'Next',
              onPressed: () async {
                await context
                    .read<ResetPasswordCubit>()
                    .resetPasswordSubmitted();
              },
            ),
          ],
        );
      }, listener: (context, state) {
        if (state.isSubmitting) {
          context.goNamed(
            AppRouterName.verificationEmailName,
            extra: state.emailAddress.value.getOrElse(() => ''),
          );
        }
      }),
    );
  }
}
