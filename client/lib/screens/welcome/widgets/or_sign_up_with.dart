import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/screens/welcome/widgets/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class SignUpWith extends StatelessWidget {
  const SignUpWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: TextColor.grey)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Or Sign up with',
                style: context.textStyle.h5.copyWith(
                  color: TextColor.grey,
                  fontWeight: FontWeightStyle.regular.fontWeight,
                ),
              ),
            ),
            Expanded(child: Divider(color: TextColor.grey)),
          ],
        ),
        const Spacer(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SocialIcon(
              icon: Icons.g_mobiledata,
              width: 60,
              height: 60,
            ),
            SocialIcon(
              icon: Icons.apple,
              width: 60,
              height: 60,
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
