import 'dart:ui';

enum FontWeightStyle {
  regular,
  medium,
  semiBold,
}

extension FontWeightExtension on FontWeightStyle {
  FontWeight get fontWeight {
    switch (this) {
      case FontWeightStyle.regular:
        return FontWeight.w400;
      case FontWeightStyle.medium:
        return FontWeight.w500;
      case FontWeightStyle.semiBold:
        return FontWeight.w600;

      default:
        return FontWeight.normal;
    }
  }
}
