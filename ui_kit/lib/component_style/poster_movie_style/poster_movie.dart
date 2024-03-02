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

  PosterMovieStyle({
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
      );

  factory PosterMovieStyle.light() => PosterMovieStyle(
        borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
        titleStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w600, color: TextColor.black),
        releaseStyle: CinemaxTypography.h6()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.black),
        contentPadding: const EdgeInsets.all(_Constants.amountPadding),
      );

  @override
  PosterMovieStyle lerp(
    covariant PosterMovieStyle? other,
    double t,
  ) {
    return this;
  }

  @override
  PosterMovieStyle copyWith({
    double? width,
    double? height,
    TextStyle? titleStyle,
    TextStyle? releaseStyle,
    EdgeInsets? contentPadding,
    BorderRadius? borderRadius,
  }) {
    return PosterMovieStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      titleStyle: titleStyle ?? this.titleStyle,
      releaseStyle: releaseStyle ?? this.releaseStyle,
      contentPadding: contentPadding ?? this.contentPadding,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
