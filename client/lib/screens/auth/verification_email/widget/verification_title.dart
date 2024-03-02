import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class VerificationTitle extends StatelessWidget {
  const VerificationTitle({super.key, required this.emailAddress});

  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return Column(
      children: [
        Text(
          'Verifying Your Account',
          textAlign: TextAlign.center,
          style: textStyle.h2.copyWith(
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        ),
        SizedBox(height: context.spacerStyle.height),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'Your Account Security is Our Priotyyel Weve Send you a Secure Lonk to Safely Change Your Password and Keep Your Account Protected',
                style: textStyle.h5.copyWith(
                  color: TextColor.grey,
                  overflow: TextOverflow.clip,
                  fontWeight: FontWeightStyle.medium.fontWeight,
                ),
              ),
              const TextSpan(text: ' '),
              TextSpan(
                text: '($emailAddress)',
                style: textStyle.h5.copyWith(
                  overflow: TextOverflow.clip,
                  fontWeight: FontWeightStyle.medium.fontWeight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
