import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class AvatarStyle extends ThemeExtension<AvatarStyle> {
  final double borderRadius;
  final double avatarRadius;
  final Color borderColor;

  AvatarStyle({
    this.avatarRadius = 19,
    this.borderRadius = 20,
    required this.borderColor,
  });

  factory AvatarStyle.dark() => AvatarStyle(
        borderColor: PrimaryColor.blueAccent,
      );

  factory AvatarStyle.light() => AvatarStyle(
        borderColor: PrimaryColor.blueAccent,
      );

  @override
  AvatarStyle lerp(ThemeExtension<AvatarStyle>? other, double t) {
    if (other is! AvatarStyle) {
      return this;
    }

    return AvatarStyle(
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
      avatarRadius: lerpDouble(avatarRadius, other.avatarRadius, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }

  @override
  AvatarStyle copyWith({
    BorderRadius? borderRadius,
    BorderRadius? avatarRadius,
    Color? borderColor,
  }) {
    return AvatarStyle(
      borderColor: borderColor ?? this.borderColor,
    );
  }
}
