import 'package:client/features/auth/reset_password/reset_password_form.dart';
import 'package:client/screens/auth/widgets/title_sing_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/component.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CinemaxAppBar(
          leadingIcon: CinemaxIcon(
        icon: CinemaxIcons.arrowBack,
        onTap: () => context.pop(),
      )),
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth / 15),
          child: const Column(
            children: [
              TitleForScreen(
                titleText: 'Reset Password',
                subTitleText: 'Recover your account password',
              ),
              Expanded(child: ResetPasswordForm()),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
