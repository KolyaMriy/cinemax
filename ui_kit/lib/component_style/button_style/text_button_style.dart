import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

abstract class _Constants {
  static const double paddingH = 12;
  static const double paddingV = 18;
}

class TextButtonStyle extends ThemeExtension<TextButtonStyle> {
  final EdgeInsets contentPadding;
  final Color hoveredTextColor;
  final Color disabledTextColor;
  final TextStyle textStyle;

  TextButtonStyle({
    required this.contentPadding,
    required this.textStyle,
    required this.disabledTextColor,
    required this.hoveredTextColor,
  });

  factory TextButtonStyle.light() => TextButtonStyle(
        contentPadding: const EdgeInsets.symmetric(
          vertical: _Constants.paddingV,
          horizontal: _Constants.paddingH,
        ),
        textStyle: CinemaxTypography.h4().copyWith(
          fontWeight: FontWeight.w500,
          color: PrimaryColor.blueAccent,
        ),
        disabledTextColor: TextColor.grey,
        hoveredTextColor: TextColor.whiteGrey,
      );

  factory TextButtonStyle.dark() => TextButtonStyle(
        contentPadding: const EdgeInsets.symmetric(
          vertical: _Constants.paddingV,
          horizontal: _Constants.paddingH,
        ),
        textStyle: CinemaxTypography.h4().copyWith(
          fontWeight: FontWeight.w500,
          color: PrimaryColor.blueAccent,
        ),
        disabledTextColor: TextColor.grey,
        hoveredTextColor: TextColor.whiteGrey,
      );

  @override
  TextButtonStyle copyWith({
    EdgeInsets? contentPadding,
    Color? hoveredTextColor,
    Color? disabledTextColor,
    TextStyle? textStyle,
  }) {
    return TextButtonStyle(
      textStyle: textStyle ?? this.textStyle,
      contentPadding: contentPadding ?? this.contentPadding,
      hoveredTextColor: hoveredTextColor ?? this.hoveredTextColor,
      disabledTextColor: disabledTextColor ?? this.disabledTextColor,
    );
  }

  @override
  TextButtonStyle lerp(
    covariant ThemeExtension<TextButtonStyle>? other,
    double t,
  ) {
    if (other is! TextButtonStyle) {
      return this;
    }

    return TextButtonStyle(
      hoveredTextColor:
          Color.lerp(hoveredTextColor, other.hoveredTextColor, t)!,
      contentPadding: EdgeInsets.fromLTRB(
          lerpDouble(contentPadding.left, contentPadding.left, t)!,
          lerpDouble(contentPadding.top, contentPadding.top, t)!,
          lerpDouble(contentPadding.right, contentPadding.right, t)!,
          lerpDouble(contentPadding.bottom, contentPadding.bottom, t)!),
      textStyle: other.textStyle.copyWith(
        color: Color.lerp(textStyle.color, other.textStyle.color, t),
        fontSize: lerpDouble(textStyle.fontSize, other.textStyle.fontSize, t),
      ),
      disabledTextColor:
          Color.lerp(disabledTextColor, other.disabledTextColor, t)!,
    );
  }
}
