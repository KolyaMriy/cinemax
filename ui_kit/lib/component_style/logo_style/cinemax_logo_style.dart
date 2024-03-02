import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class LogoStyle extends ThemeExtension<LogoStyle> {
  final Color primaryColor;

  LogoStyle({required this.primaryColor});

  factory LogoStyle.dark() => LogoStyle(primaryColor: PrimaryColor.blueAccent);

  factory LogoStyle.light() => LogoStyle(primaryColor: PrimaryColor.dark);

  @override
  LogoStyle copyWith({
    Color? primaryColor,
  }) {
    return LogoStyle(
      primaryColor: primaryColor ?? this.primaryColor,
    );
  }

  @override
  LogoStyle lerp(
    covariant ThemeExtension<LogoStyle>? other,
    double t,
  ) {
    if (other is! LogoStyle) {
      return this;
    }

    return LogoStyle(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
    );
  }
}
