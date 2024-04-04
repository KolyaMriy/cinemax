import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

abstract class _Constants {
  static const double amountPadding = 10;
  static const double amountBorderRadius = 20;
}

class SearchMovieCardStyle extends ThemeExtension<SearchMovieCardStyle> {
  final double posterWidth;
  final double width;
  final double height;
  final TextStyle titleStyle;
  final TextStyle genreStyle;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color backgroundColor;

  SearchMovieCardStyle({
    this.width = 200,
    required this.backgroundColor,
    required this.borderRadius,
    this.posterWidth = 150,
    this.height = 200,
    required this.genreStyle,
    required this.titleStyle,
    required this.padding,
  });

  factory SearchMovieCardStyle.dark() => SearchMovieCardStyle(
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
        backgroundColor: PrimaryColor.softDark.withOpacity(0.5),
      );

  factory SearchMovieCardStyle.light() => SearchMovieCardStyle(
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
      backgroundColor: PrimaryColor.blue200);

  @override
  SearchMovieCardStyle lerp(
    covariant SearchMovieCardStyle? other,
    double t,
  ) {
    if (other == null) return this;

    return SearchMovieCardStyle(
      posterWidth: lerpDouble(posterWidth, other.posterWidth, t) ?? posterWidth,
      height: lerpDouble(height, other.height, t) ?? height,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      genreStyle: TextStyle.lerp(genreStyle, other.genreStyle, t)!,
      padding: EdgeInsets.lerp(padding, other.padding, t)!,
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  SearchMovieCardStyle copyWith({
    double? width,
    double? height,
    TextStyle? titleStyle,
    TextStyle? genreStyle,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    Color? backgroundColor,
    double? posterWidth,
  }) {
    return SearchMovieCardStyle(
      posterWidth: posterWidth ?? this.posterWidth,
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
