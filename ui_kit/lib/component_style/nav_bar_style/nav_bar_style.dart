import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

class NavBarStyle extends ThemeExtension<NavBarStyle> {
  final TextStyle textStyle;
  final Color iconActiveColor;
  final Color iconColor;
  final Color backgroundColor;
  final EdgeInsets tabMargin;
  final EdgeInsets padding;

  NavBarStyle({
    required this.backgroundColor,
    required this.textStyle,
    required this.iconActiveColor,
    required this.iconColor,
    required this.tabMargin,
    required this.padding,
  });

  factory NavBarStyle.dark() => NavBarStyle(
        textStyle: CinemaxTypography.h4().copyWith(
            color: PrimaryColor.blueAccent, fontWeight: FontWeight.w500),
        iconActiveColor: PrimaryColor.blueAccent,
        iconColor: TextColor.grey,
        tabMargin: const EdgeInsets.only(bottom: 20, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        backgroundColor: PrimaryColor.softDark,
      );

  factory NavBarStyle.light() => NavBarStyle(
        textStyle: CinemaxTypography.h4()
            .copyWith(color: TextColor.white, fontWeight: FontWeight.w500),
        iconActiveColor: TextColor.whiteGrey,
        iconColor: TextColor.darkGrey,
        tabMargin: const EdgeInsets.only(bottom: 20, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        backgroundColor: PrimaryColor.blueBackground,
      );

  @override
  NavBarStyle copyWith({
    TextStyle? textStyle,
    Color? iconActiveColor,
    Color? iconColor,
    EdgeInsets? tabMargin,
    EdgeInsets? padding,
    Color? backgroundColor,
  }) {
    return NavBarStyle(
      textStyle: textStyle ?? this.textStyle,
      iconActiveColor: iconActiveColor ?? this.iconActiveColor,
      iconColor: iconColor ?? this.iconColor,
      tabMargin: tabMargin ?? this.tabMargin,
      padding: padding ?? this.padding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  NavBarStyle lerp(
    covariant ThemeExtension<NavBarStyle>? other,
    double t,
  ) {
    if (other is! NavBarStyle) {
      return this;
    }
    return NavBarStyle(
      textStyle: other.textStyle.copyWith(
        color: Color.lerp(textStyle.color, other.textStyle.color, t),
        fontSize: lerpDouble(textStyle.fontSize, other.textStyle.fontSize, t),
      ),
      iconActiveColor: Color.lerp(iconActiveColor, other.iconActiveColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      tabMargin: EdgeInsets.fromLTRB(
          lerpDouble(tabMargin.left, tabMargin.left, t)!,
          lerpDouble(tabMargin.top, tabMargin.top, t)!,
          lerpDouble(tabMargin.right, tabMargin.right, t)!,
          lerpDouble(tabMargin.bottom, tabMargin.bottom, t)!),
      padding: EdgeInsets.fromLTRB(
          lerpDouble(padding.left, padding.left, t)!,
          lerpDouble(padding.top, padding.top, t)!,
          lerpDouble(padding.right, padding.right, t)!,
          lerpDouble(padding.bottom, padding.bottom, t)!),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }
}
