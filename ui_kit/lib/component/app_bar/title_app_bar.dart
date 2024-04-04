import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
    this.title,
    this.titleText,
    this.subTitle,
    required this.textAlign,
    this.textColor,
  });

  final Widget? title;
  final String? titleText;
  final Color? textColor;
  final String? subTitle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    if (titleText != null) {
      return RichText(
        textAlign: textAlign,
        text: TextSpan(
          style: context.appBarStyle.titleTextStyle.copyWith(
            overflow: TextOverflow.ellipsis,
          ),
          children: [
            TextSpan(
              text: titleText,
              style: context.appBarStyle.titleTextStyle.copyWith(
                overflow: TextOverflow.ellipsis,
                color: textColor,
              ),
            ),
            if (subTitle != null)
              TextSpan(
                children: [
                  const TextSpan(text: '\n'),
                  TextSpan(
                    text: subTitle,
                    style: context.appBarStyle.subTitleTextStyle,
                  )
                ],
              )
            else
              const TextSpan()
          ],
        ),
      );
    } else {
      return title ?? const SizedBox.shrink();
    }
  }
}
