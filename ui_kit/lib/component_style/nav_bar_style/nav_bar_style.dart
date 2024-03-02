import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

class NavBarStyle extends ThemeExtension<NavBarStyle> {
  final TextStyle textStyle;
  final Color iconActiveColor;
  final Color iconColor;
  final EdgeInsets tabMargin;
  final EdgeInsets padding;

  NavBarStyle({
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
      );

  factory NavBarStyle.light() => NavBarStyle(
        textStyle: CinemaxTypography.h4().copyWith(
            color: PrimaryColor.blueAccent, fontWeight: FontWeight.w500),
        iconActiveColor: PrimaryColor.blueAccent,
        iconColor: TextColor.grey,
        tabMargin: const EdgeInsets.only(bottom: 20, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      );

  @override
  NavBarStyle copyWith({
    TextStyle? textStyle,
    Color? iconActiveColor,
    Color? iconColor,
    EdgeInsets? tabMargin,
    EdgeInsets? padding,
  }) {
    return NavBarStyle(
      textStyle: textStyle ?? this.textStyle,
      iconActiveColor: iconActiveColor ?? this.iconActiveColor,
      iconColor: iconColor ?? this.iconColor,
      tabMargin: tabMargin ?? this.tabMargin,
      padding: padding ?? this.padding,
    );
  }

  @override
  ThemeExtension<NavBarStyle> lerp(
      covariant ThemeExtension<NavBarStyle>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
