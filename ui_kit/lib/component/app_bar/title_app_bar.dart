import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
    this.title,
    this.titleText,
    this.subTitle,
  });

  final Widget? title;
  final String? titleText;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    if (titleText != null) {
      return RichText(
        text: TextSpan(
          style: context.appBarStyle.titleTextStyle.copyWith(
            overflow: TextOverflow.ellipsis,
          ),
          children: [
            TextSpan(
              text: titleText,
              style: context.appBarStyle.titleTextStyle.copyWith(
                overflow: TextOverflow.ellipsis,
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
