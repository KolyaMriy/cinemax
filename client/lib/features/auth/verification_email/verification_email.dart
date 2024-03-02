import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/auth/verification_email/cubit/verification_email_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/component.dart';

import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class VerificationEmailForm extends StatelessWidget {
  const VerificationEmailForm({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return BlocProvider(
      create: (context) => DependencyProvider.get<VerificationEmailCubit>(),
      child: BlocBuilder<VerificationEmailCubit, VerificationEmailState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              CinemaxOutlinedButton(
                label: 'Confirm',
                onPressed: () {
                  context.pushNamed(AppRouterName.welcomeName);
                },
              ),
              //
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t receive code?',
                    style: textStyle.h4.copyWith(
                      color: TextColor.grey,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: CinemaxTextButton(
                      label: 'Resend',
                      onPressed: state.disableResendButton
                          ? null
                          : () => context
                              .read<VerificationEmailCubit>()
                              .resendActionLink(email: email),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
