import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

class _Constant {
  static const double borderRadius = 12;
  static const double widthPinput = 64;
  static const double heightPinput = 64;
}

class PinputStyle extends ThemeExtension<PinputStyle> {
  final PinTheme submittedPinTheme;
  final PinTheme focusedPinTheme;
  final PinTheme defaultPinTheme;
  final PinTheme errorPinTheme;
  final TextStyle errorTextStyle;

  PinputStyle({
    required this.submittedPinTheme,
    required this.focusedPinTheme,
    required this.errorTextStyle,
    required this.defaultPinTheme,
    required this.errorPinTheme,
  });

  factory PinputStyle.dark() => PinputStyle(
        submittedPinTheme: PinTheme(
          width: _Constant.widthPinput,
          height: _Constant.heightPinput,
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: _Constant.widthPinput,
          height: _Constant.heightPinput,
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        defaultPinTheme: PinTheme(
          width: _Constant.widthPinput,
          height: _Constant.heightPinput,
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
          ),
        ),
        errorPinTheme: PinTheme(
          width: _Constant.widthPinput,
          height: _Constant.heightPinput,
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: SecondaryColor.red,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: SecondaryColor.red,
            ),
          ),
        ),
        errorTextStyle: CinemaxTypography.h4().copyWith(
          color: SecondaryColor.red,
          fontWeight: FontWeight.w400,
        ),
      );

  factory PinputStyle.light() => PinputStyle(
        submittedPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: TextColor.darkGrey,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        focusedPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.black,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        defaultPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.black,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
          ),
        ),
        errorPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: SecondaryColor.red,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: SecondaryColor.red,
            ),
          ),
        ),
        errorTextStyle: CinemaxTypography.h4().copyWith(
          color: SecondaryColor.red,
          fontWeight: FontWeight.w400,
        ),
      );

  @override
  PinputStyle copyWith(
      {PinTheme? submittedPinTheme,
      PinTheme? focusedPinTheme,
      PinTheme? defaultPinTheme,
      PinTheme? errorPinTheme,
      TextStyle? errorTextStyle}) {
    return PinputStyle(
      submittedPinTheme: submittedPinTheme ?? this.submittedPinTheme,
      focusedPinTheme: focusedPinTheme ?? this.focusedPinTheme,
      defaultPinTheme: defaultPinTheme ?? this.defaultPinTheme,
      errorPinTheme: errorPinTheme ?? this.errorPinTheme,
      errorTextStyle: errorTextStyle ?? this.errorTextStyle,
    );
  }

  @override
  ThemeExtension<PinputStyle> lerp(
      covariant ThemeExtension<PinputStyle>? other, double t) {
    throw UnimplementedError();
  }
}
