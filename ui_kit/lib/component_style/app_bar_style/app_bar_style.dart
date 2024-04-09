import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

class AppBarStyle extends ThemeExtension<AppBarStyle> {
  final TextStyle titleTextStyle;
  final TextStyle subTitleTextStyle;
  final TextStyle actionTextStyle;
  final Color backgroundColor;

  AppBarStyle({
    required this.titleTextStyle,
    required this.subTitleTextStyle,
    required this.actionTextStyle,
    required this.backgroundColor,
  });

  factory AppBarStyle.dark() => AppBarStyle(
        backgroundColor: TextColor.black,
        titleTextStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w600, color: TextColor.white),
        subTitleTextStyle: CinemaxTypography.h6().copyWith(
            color: TextColor.grey,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis),
        actionTextStyle: CinemaxTypography.h6()
            .copyWith(color: TextColor.white, fontWeight: FontWeight.w500),
      );

  factory AppBarStyle.light() => AppBarStyle(
        backgroundColor: PrimaryColor.light,
        titleTextStyle: CinemaxTypography.h4().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.black,
            overflow: TextOverflow.ellipsis),
        subTitleTextStyle: CinemaxTypography.h6().copyWith(
            color: TextColor.grey,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis),
        actionTextStyle: CinemaxTypography.h6()
            .copyWith(color: TextColor.black, fontWeight: FontWeight.w500),
      );

  @override
  AppBarStyle copyWith({
    Color? backgroundColor,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle,
    TextStyle? actionTextStyle,
  }) {
    return AppBarStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      actionTextStyle: actionTextStyle ?? this.actionTextStyle,
      subTitleTextStyle: subTitleTextStyle ?? this.subTitleTextStyle,
    );
  }

  @override
  AppBarStyle lerp(
    covariant ThemeExtension<AppBarStyle>? other,
    double t,
  ) {
    if (other is! AppBarStyle) {
      return this;
    }

    return AppBarStyle(
      titleTextStyle: other.titleTextStyle.copyWith(
        color: Color.lerp(titleTextStyle.color, other.titleTextStyle.color, t),
        fontSize: lerpDouble(
            titleTextStyle.fontSize, other.titleTextStyle.fontSize, t),
      ),
      subTitleTextStyle: other.subTitleTextStyle.copyWith(
        color: Color.lerp(
            subTitleTextStyle.color, other.subTitleTextStyle.color, t),
        fontSize: lerpDouble(
            subTitleTextStyle.fontSize, other.subTitleTextStyle.fontSize, t),
      ),
      actionTextStyle: other.actionTextStyle.copyWith(
        color:
            Color.lerp(actionTextStyle.color, other.actionTextStyle.color, t),
        fontSize: lerpDouble(
            actionTextStyle.fontSize, other.actionTextStyle.fontSize, t),
      ),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }
}
