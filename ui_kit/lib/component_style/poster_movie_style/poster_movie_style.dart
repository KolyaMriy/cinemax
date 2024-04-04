import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

abstract class _Constants {
  static const double amountPadding = 10;
  static const double amountBorderRadius = 20;
}

class PosterMovieStyle extends ThemeExtension<PosterMovieStyle> {
  final double width;
  final double height;
  final TextStyle titleStyle;
  final TextStyle releaseStyle;
  final EdgeInsets contentPadding;
  final BorderRadius borderRadius;
  final Color backgroundColor;

  PosterMovieStyle({
    required this.backgroundColor,
    required this.borderRadius,
    this.width = 300,
    this.height = 150,
    required this.releaseStyle,
    required this.titleStyle,
    required this.contentPadding,
  });

  factory PosterMovieStyle.dark() => PosterMovieStyle(
        borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
        titleStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w600, color: TextColor.white),
        releaseStyle: CinemaxTypography.h6()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.white),
        contentPadding: const EdgeInsets.all(_Constants.amountPadding),
        backgroundColor: Colors.black45,
      );

  factory PosterMovieStyle.light() => PosterMovieStyle(
        borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
        titleStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w600, color: TextColor.white),
        releaseStyle: CinemaxTypography.h6()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.white),
        contentPadding: const EdgeInsets.all(_Constants.amountPadding),
        backgroundColor: Colors.black45,
      );

  @override
  PosterMovieStyle lerp(
    covariant PosterMovieStyle? other,
    double t,
  ) {
    if (other == null) return this;

    return PosterMovieStyle(
      width: lerpDouble(width, other.width, t) ?? width,
      height: lerpDouble(height, other.height, t) ?? height,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      releaseStyle: TextStyle.lerp(releaseStyle, other.releaseStyle, t)!,
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t)!,
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  PosterMovieStyle copyWith({
    double? width,
    double? height,
    TextStyle? titleStyle,
    TextStyle? releaseStyle,
    EdgeInsets? contentPadding,
    BorderRadius? borderRadius,
    Color? backgroundColor,
  }) {
    return PosterMovieStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      titleStyle: titleStyle ?? this.titleStyle,
      releaseStyle: releaseStyle ?? this.releaseStyle,
      contentPadding: contentPadding ?? this.contentPadding,
      borderRadius: borderRadius ?? this.borderRadius,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
