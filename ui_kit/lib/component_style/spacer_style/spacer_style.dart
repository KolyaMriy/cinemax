import 'dart:ui';

import 'package:flutter/material.dart';

abstract class _Constant {
  static const double mainSpacerHeight = 35;
  static const double mainSpacerWidth = 20;
  static const double spacerOnText = 5;
}

class SpacerStyle extends ThemeExtension<SpacerStyle> {
  final double height;
  final double width;
  final double widthOnText;

  SpacerStyle({
    this.widthOnText = _Constant.spacerOnText,
    this.height = _Constant.mainSpacerHeight,
    this.width = _Constant.mainSpacerWidth,
  });

  @override
  SpacerStyle lerp(
    covariant ThemeExtension<SpacerStyle>? other,
    double t,
  ) {
    if (other == null || other.runtimeType != SpacerStyle) {
      return this;
    }

    final typedOther = other as SpacerStyle;
    return SpacerStyle(
      height: lerpDouble(height, typedOther.height, t)!,
      width: lerpDouble(width, typedOther.width, t)!,
      widthOnText: lerpDouble(widthOnText, typedOther.widthOnText, t)!,
    );
  }

  @override
  SpacerStyle copyWith({
    double? height,
    double? width,
    double? widthOnText,
  }) {
    return SpacerStyle(
      height: height ?? this.height,
      width: width ?? this.width,
      widthOnText: widthOnText ?? this.widthOnText,
    );
  }
}
