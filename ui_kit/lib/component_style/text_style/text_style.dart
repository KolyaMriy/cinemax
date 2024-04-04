import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

class TextStyles extends ThemeExtension<TextStyles> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final TextStyle h6;
  final TextStyle h7;

  TextStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.h7,
  });

  factory TextStyles.dark() => TextStyles(
        h1: CinemaxTypography.h1().copyWith(color: TextColor.white),
        h2: CinemaxTypography.h2().copyWith(color: TextColor.white),
        h3: CinemaxTypography.h3().copyWith(color: TextColor.white),
        h4: CinemaxTypography.h4().copyWith(color: TextColor.white),
        h5: CinemaxTypography.h5().copyWith(color: TextColor.white),
        h6: CinemaxTypography.h6().copyWith(color: TextColor.white),
        h7: CinemaxTypography.h7().copyWith(color: TextColor.white),
      );
  factory TextStyles.light() => TextStyles(
        h1: CinemaxTypography.h1().copyWith(color: PrimaryColor.blue950),
        h2: CinemaxTypography.h2().copyWith(color: PrimaryColor.blue950),
        h3: CinemaxTypography.h3().copyWith(color: PrimaryColor.blue950),
        h4: CinemaxTypography.h4().copyWith(color: PrimaryColor.blue950),
        h5: CinemaxTypography.h5().copyWith(color: PrimaryColor.blue950),
        h6: CinemaxTypography.h6().copyWith(color: PrimaryColor.blue950),
        h7: CinemaxTypography.h7().copyWith(color: PrimaryColor.blue950),
      );

  @override
  TextStyles copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
    TextStyle? h7,
  }) {
    return TextStyles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
      h7: h7 ?? this.h7,
    );
  }

  @override
  TextStyles lerp(
    covariant ThemeExtension<TextStyles>? other,
    double t,
  ) {
    if (other == null || other.runtimeType != TextStyles) {
      return this;
    }

    final typedOther = other as TextStyles;
    return TextStyles(
      h1: TextStyle.lerp(h1, typedOther.h1, t)!,
      h2: TextStyle.lerp(h2, typedOther.h2, t)!,
      h3: TextStyle.lerp(h3, typedOther.h3, t)!,
      h4: TextStyle.lerp(h4, typedOther.h4, t)!,
      h5: TextStyle.lerp(h5, typedOther.h5, t)!,
      h6: TextStyle.lerp(h6, typedOther.h6, t)!,
      h7: TextStyle.lerp(h7, typedOther.h7, t)!,
    );
  }
}
