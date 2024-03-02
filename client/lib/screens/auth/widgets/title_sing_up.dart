import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class TitleForScreen extends StatelessWidget {
  const TitleForScreen({
    super.key,
    required this.titleText,
    this.subTitleText,
  });

  final String titleText;
  final String? subTitleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: context.textStyle.h2
              .copyWith(fontWeight: FontWeightStyle.semiBold.fontWeight),
        ),
        if (subTitleText != null)
          Text(
            subTitleText!,
            textAlign: TextAlign.center,
            style: context.textStyle.h5.copyWith(
              color: TextColor.grey,
              fontWeight: FontWeightStyle.medium.fontWeight,
              overflow: TextOverflow.clip,
            ),
          )
      ],
    );
  }
}
