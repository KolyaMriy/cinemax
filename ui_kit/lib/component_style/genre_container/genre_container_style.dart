import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

abstract class _Constants {
  static const double borderRadius = 20;
}

class GenreContainerStyle extends ThemeExtension<GenreContainerStyle> {
  final BorderRadius borderRadius;
  final Color activeColor;
  final Color textActiveColor;
  final Color textColor;
  final EdgeInsets contentPadding;
  final EdgeInsets padding;

  GenreContainerStyle({
    required this.padding,
    required this.contentPadding,
    required this.borderRadius,
    required this.activeColor,
    required this.textActiveColor,
    required this.textColor,
  });

  factory GenreContainerStyle.dark() => GenreContainerStyle(
        activeColor: PrimaryColor.softDark.withOpacity(0.8),
        textActiveColor: TextColor.white,
        textColor: PrimaryColor.blue500,
        borderRadius: BorderRadius.circular(_Constants.borderRadius),
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(8),
      );

  factory GenreContainerStyle.light() => GenreContainerStyle(
        activeColor: PrimaryColor.blue600,
        textActiveColor: PrimaryColor.blue50,
        textColor: PrimaryColor.blue950,
        borderRadius: BorderRadius.circular(_Constants.borderRadius),
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(8),
      );

  @override
  GenreContainerStyle copyWith({
    BorderRadius? borderRadius,
    Color? activeColor,
    Color? textActiveColor,
    Color? textColor,
    EdgeInsets? contentPadding,
    EdgeInsets? padding,
  }) =>
      GenreContainerStyle(
        borderRadius: borderRadius ?? this.borderRadius,
        activeColor: activeColor ?? this.activeColor,
        textActiveColor: textActiveColor ?? this.textActiveColor,
        textColor: textColor ?? this.textColor,
        contentPadding: contentPadding ?? this.contentPadding,
        padding: padding ?? this.padding,
      );

  @override
  GenreContainerStyle lerp(
      ThemeExtension<GenreContainerStyle>? other, double t) {
    if (other is! GenreContainerStyle) {
      return this;
    }

    return GenreContainerStyle(
      contentPadding: EdgeInsets.fromLTRB(
          lerpDouble(contentPadding.left, contentPadding.left, t)!,
          lerpDouble(contentPadding.top, contentPadding.top, t)!,
          lerpDouble(contentPadding.right, contentPadding.right, t)!,
          lerpDouble(contentPadding.bottom, contentPadding.bottom, t)!),
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
      activeColor: Color.lerp(activeColor, other.activeColor, t)!,
      textActiveColor: Color.lerp(textActiveColor, other.textActiveColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      padding: EdgeInsets.fromLTRB(
          lerpDouble(padding.left, padding.left, t)!,
          lerpDouble(padding.top, padding.top, t)!,
          lerpDouble(padding.right, padding.right, t)!,
          lerpDouble(padding.bottom, padding.bottom, t)!),
    );
  }
}
