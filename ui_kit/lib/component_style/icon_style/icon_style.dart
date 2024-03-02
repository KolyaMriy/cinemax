import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class IconStyle extends ThemeExtension<IconStyle> {
  final Color iconColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  IconStyle({
    required this.iconColor,
    required this.borderRadius,
    required this.backgroundColor,
  });

  factory IconStyle.dark() => IconStyle(
        iconColor: PrimaryColor.light,
        backgroundColor: PrimaryColor.soft,
        borderRadius: BorderRadius.circular(10),
      );

  factory IconStyle.light() => IconStyle(
        iconColor: PrimaryColor.soft,
        backgroundColor: PrimaryColor.light,
        borderRadius: BorderRadius.circular(10),
      );

  @override
  IconStyle copyWith({
    Color? iconColor,
    Color? backgroundColor,
    BorderRadius? borderRadius,
  }) {
    return IconStyle(
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  IconStyle lerp(
    covariant ThemeExtension<IconStyle>? other,
    double t,
  ) {
    if (other is! IconStyle) {
      return this;
    }

    return IconStyle(
      borderRadius: BorderRadius.only(
        topLeft: Radius.elliptical(
            lerpDouble(
                borderRadius.topLeft.x, other.borderRadius.topLeft.x, t)!,
            lerpDouble(
                borderRadius.topLeft.y, other.borderRadius.topLeft.y, t)!),
        topRight: Radius.elliptical(
            lerpDouble(
                borderRadius.topRight.x, other.borderRadius.topRight.x, t)!,
            lerpDouble(
                borderRadius.topRight.y, other.borderRadius.topRight.y, t)!),
        bottomRight: Radius.elliptical(
            lerpDouble(borderRadius.bottomRight.x,
                other.borderRadius.bottomRight.x, t)!,
            lerpDouble(borderRadius.bottomRight.y,
                other.borderRadius.bottomRight.y, t)!),
        bottomLeft: Radius.elliptical(
            lerpDouble(
                borderRadius.bottomLeft.x, other.borderRadius.bottomLeft.x, t)!,
            lerpDouble(borderRadius.bottomLeft.y,
                other.borderRadius.bottomLeft.y, t)!),
      ),
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }
}
