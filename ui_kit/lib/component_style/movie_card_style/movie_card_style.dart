import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

abstract class _Constants {
  static const double amountPadding = 10;
  static const double amountBorderRadius = 20;
}

class MovieCardStyle extends ThemeExtension<MovieCardStyle> {
  final double width;
  final double height;
  final TextStyle titleStyle;
  final TextStyle genreStyle;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color backgroundColor;

  const MovieCardStyle({
    required this.backgroundColor,
    required this.borderRadius,
    this.width = 300,
    this.height = 150,
    required this.genreStyle,
    required this.titleStyle,
    required this.padding,
  });

  factory MovieCardStyle.dark() => MovieCardStyle(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(_Constants.amountBorderRadius),
        topRight: Radius.circular(_Constants.amountPadding),
        bottomLeft: Radius.circular(_Constants.amountBorderRadius),
      ),
      titleStyle: CinemaxTypography.h5()
          .copyWith(fontWeight: FontWeight.w600, color: TextColor.white),
      genreStyle: CinemaxTypography.h6()
          .copyWith(fontWeight: FontWeight.w500, color: TextColor.grey),
      padding: const EdgeInsets.all(_Constants.amountPadding),
      backgroundColor: PrimaryColor.softDark.withOpacity(0.8));

  factory MovieCardStyle.light() => MovieCardStyle(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(_Constants.amountBorderRadius),
        topRight: Radius.circular(_Constants.amountPadding),
        bottomLeft: Radius.circular(_Constants.amountBorderRadius),
      ),
      titleStyle: CinemaxTypography.h5()
          .copyWith(fontWeight: FontWeight.w600, color: PrimaryColor.blue950),
      genreStyle: CinemaxTypography.h6()
          .copyWith(fontWeight: FontWeight.w500, color: TextColor.darkGrey),
      padding: const EdgeInsets.all(_Constants.amountPadding),
      backgroundColor: PrimaryColor.blue100);

  @override
  MovieCardStyle lerp(
    covariant MovieCardStyle? other,
    double t,
  ) {
    if (other == null) return this;

    return MovieCardStyle(
      width: lerpDouble(width, other.width, t) ?? width,
      height: lerpDouble(height, other.height, t) ?? height,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      genreStyle: TextStyle.lerp(genreStyle, other.genreStyle, t)!,
      padding: EdgeInsets.lerp(padding, other.padding, t)!,
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  MovieCardStyle copyWith({
    double? width,
    double? height,
    TextStyle? titleStyle,
    TextStyle? genreStyle,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    Color? backgroundColor,
  }) {
    return MovieCardStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      titleStyle: titleStyle ?? this.titleStyle,
      genreStyle: genreStyle ?? this.genreStyle,
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
