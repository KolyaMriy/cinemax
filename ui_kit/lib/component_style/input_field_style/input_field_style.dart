import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

abstract class _Constants {
  static const double contentPaddingV = 16;
  static const double contentPaddingH = 20;
  static const double amountBorderRadius = 15;
  static const double iconPadding = 15;
}

class InputFieldStyle extends ThemeExtension<InputFieldStyle> {
  final TextStyle labelStyle;
  final TextStyle floatingLabelStyle;
  final TextStyle textStyle;
  final TextStyle errorTextStyle;
  final Color fillColor;

  final OutlineInputBorder focusBorder;
  final OutlineInputBorder border;
  final OutlineInputBorder errorBorder;

  final EdgeInsets contentPadding;
  final EdgeInsets amountIconPadding;

  InputFieldStyle({
    required this.border,
    required this.errorBorder,
    required this.errorTextStyle,
    required this.floatingLabelStyle,
    required this.amountIconPadding,
    required this.fillColor,
    required this.labelStyle,
    required this.textStyle,
    required this.focusBorder,
    required this.contentPadding,
  });

  factory InputFieldStyle.dark() => InputFieldStyle(
        labelStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.grey),
        textStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.white),
        contentPadding: const EdgeInsets.symmetric(
            vertical: _Constants.contentPaddingV,
            horizontal: _Constants.contentPaddingH),
        fillColor: PrimaryColor.soft,
        focusBorder: OutlineInputBorder(
          borderSide: BorderSide(color: PrimaryColor.blueAccent),
          borderRadius: const BorderRadius.all(
              Radius.circular(_Constants.amountBorderRadius)),
        ),
        amountIconPadding:
            const EdgeInsets.symmetric(horizontal: _Constants.iconPadding),
        errorTextStyle: CinemaxTypography.h6()
            .copyWith(fontWeight: FontWeight.w400, color: SecondaryColor.red),
        floatingLabelStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.whiteGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
          borderSide: BorderSide(color: SecondaryColor.red.withOpacity(0.8)),
        ),
      );

  factory InputFieldStyle.light() => InputFieldStyle(
        labelStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.grey),
        textStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.black),
        contentPadding: const EdgeInsets.symmetric(
            vertical: _Constants.contentPaddingV,
            horizontal: _Constants.contentPaddingH),
        focusBorder: OutlineInputBorder(
          borderSide: BorderSide(color: PrimaryColor.blueAccent),
          borderRadius: const BorderRadius.all(
              Radius.circular(_Constants.amountBorderRadius)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_Constants.amountBorderRadius),
          borderSide: BorderSide(color: SecondaryColor.red.withOpacity(0.8)),
        ),
        fillColor: PrimaryColor.light,
        amountIconPadding: const EdgeInsets.only(left: _Constants.iconPadding),
        errorTextStyle: CinemaxTypography.h6()
            .copyWith(fontWeight: FontWeight.w400, color: SecondaryColor.red),
        floatingLabelStyle: CinemaxTypography.h4()
            .copyWith(fontWeight: FontWeight.w500, color: TextColor.darkGrey),
      );

  @override
  InputFieldStyle copyWith({
    TextStyle? labelStyle,
    TextStyle? floatingLabelStyle,
    TextStyle? textStyle,
    TextStyle? errorTextStyle,
    Color? fillColor,
    OutlineInputBorder? focusBorder,
    OutlineInputBorder? border,
    OutlineInputBorder? errorBorder,
    EdgeInsets? contentPadding,
    EdgeInsets? amountIconPadding,
  }) {
    return InputFieldStyle(
      labelStyle: labelStyle ?? this.labelStyle,
      textStyle: textStyle ?? this.textStyle,
      focusBorder: focusBorder ?? this.focusBorder,
      contentPadding: contentPadding ?? this.contentPadding,
      fillColor: fillColor ?? this.fillColor,
      amountIconPadding: amountIconPadding ?? this.amountIconPadding,
      errorTextStyle: errorTextStyle ?? this.errorTextStyle,
      floatingLabelStyle: floatingLabelStyle ?? this.floatingLabelStyle,
      border: border ?? this.border,
      errorBorder: errorBorder ?? this.errorBorder,
    );
  }

  @override
  InputFieldStyle lerp(
    covariant InputFieldStyle? other,
    double t,
  ) {
    return this;
  }
}
