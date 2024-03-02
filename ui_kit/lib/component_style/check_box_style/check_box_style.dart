import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

abstract class _Constants {
  static const double amountSizeBox = 24;
  static const double borderRadius = 3;
  static const double padding = 3;
}

class CheckboxStyle extends ThemeExtension<CheckboxStyle> {
  final BorderRadius borderRadius;
  final Color activeColor;
  final Color checkColor;
  final Color borderColor;
  final double width;
  final double height;
  final EdgeInsets contentPadding;

  CheckboxStyle({
    required this.contentPadding,
    required this.borderRadius,
    this.width = _Constants.amountSizeBox,
    this.height = _Constants.amountSizeBox,
    required this.activeColor,
    required this.checkColor,
    required this.borderColor,
  });

  factory CheckboxStyle.dark() => CheckboxStyle(
        activeColor: PrimaryColor.blueAccent,
        checkColor: PrimaryColor.light,
        borderColor: PrimaryColor.blueAccent,
        borderRadius: BorderRadius.circular(_Constants.borderRadius),
        contentPadding: const EdgeInsets.all(_Constants.padding),
      );

  factory CheckboxStyle.light() => CheckboxStyle(
        activeColor: PrimaryColor.blueAccent,
        checkColor: PrimaryColor.dark,
        borderColor: PrimaryColor.blueAccent,
        borderRadius: BorderRadius.circular(_Constants.borderRadius),
        contentPadding: const EdgeInsets.all(_Constants.padding),
      );

  @override
  CheckboxStyle copyWith({
    BorderRadius? borderRadius,
    Color? activeColor,
    Color? checkColor,
    Color? borderColor,
    EdgeInsets? contentPadding,
  }) =>
      CheckboxStyle(
        borderRadius: borderRadius ?? this.borderRadius,
        activeColor: activeColor ?? this.activeColor,
        checkColor: checkColor ?? this.checkColor,
        borderColor: borderColor ?? this.borderColor,
        contentPadding: contentPadding ?? this.contentPadding,
      );

  @override
  CheckboxStyle lerp(ThemeExtension<CheckboxStyle>? other, double t) {
    if (other is! CheckboxStyle) {
      return this;
    }

    return CheckboxStyle(
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
      checkColor: Color.lerp(checkColor, other.checkColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
