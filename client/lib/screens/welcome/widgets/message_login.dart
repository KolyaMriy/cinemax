import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/buttons/cinemax_text_button.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class MessageLogin extends StatelessWidget {
  const MessageLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'I already have an account?',
          style: textStyle.h4.copyWith(
              fontWeight: FontWeightStyle.regular.fontWeight,
              color: TextColor.grey),
        ),
        SizedBox(
          height: 60,
          width: 75,
          child: CinemaxTextButton(
            onPressed: () => context.goNamed(AppRouterName.logInName),
            label: 'Login',
          ),
        ),
      ],
    );
  }
}
