import 'package:client/core/router/app_router_name.dart';
import 'package:client/screens/auth/widgets/title_sing_up.dart';
import 'package:client/screens/welcome/widgets/message_login.dart';
import 'package:client/screens/welcome/widgets/or_sign_up_with.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/logo/cinemax_logo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth / 15,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    const CinemaxLogo(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth / 10,
                      ),
                      child: const TitleForScreen(
                        titleText: 'CINEMAX',
                        subTitleText:
                            'Enter your registered Phone Number to Sign Up',
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CinemaxFilledButton(
                  label: 'Sign Up',
                  onPressed: () => context.goNamed(AppRouterName.singUpName),
                ),
                const MessageLogin(),
                const Spacer(),
                const Expanded(child: SignUpWith()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
