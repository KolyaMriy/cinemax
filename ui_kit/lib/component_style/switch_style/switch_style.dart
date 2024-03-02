import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class SwitchStyle extends ThemeExtension<SwitchStyle> {
  final Color thumbColor;
  final Color activeColor;
  final Color trackColor;

  SwitchStyle({
    required this.thumbColor,
    required this.activeColor,
    required this.trackColor,
  });

  factory SwitchStyle.dark() => SwitchStyle(
        thumbColor: PrimaryColor.light,
        activeColor: PrimaryColor.blueAccent,
        trackColor: TextColor.grey,
      );

  factory SwitchStyle.light() => SwitchStyle(
        thumbColor: PrimaryColor.light,
        activeColor: PrimaryColor.blueAccent,
        trackColor: TextColor.grey,
      );

  @override
  SwitchStyle lerp(ThemeExtension<SwitchStyle>? other, double t) {
    if (other is! SwitchStyle) {
      return this;
    }

    return SwitchStyle(
      activeColor: Color.lerp(activeColor, other.activeColor, t)!,
      thumbColor: Color.lerp(thumbColor, other.thumbColor, t)!,
      trackColor: Color.lerp(trackColor, other.trackColor, t)!,
    );
  }

  @override
  SwitchStyle copyWith({
    Color? thumbColor,
    Color? activeColor,
    Color? trackColor,
  }) {
    return SwitchStyle(
      thumbColor: thumbColor ?? this.thumbColor,
      activeColor: activeColor ?? this.activeColor,
      trackColor: trackColor ?? this.trackColor,
    );
  }
}
