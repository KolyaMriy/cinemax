import 'dart:ui';

abstract class PrimaryColor {
  static Color light = const Color(0xf9f9f9f9);
  static Color dark = const Color(0xff1F1D2B);
  static Color softDark = const Color(0xff252836);
  static Color blue50 = const Color(0xffedfefd);
  static Color blue100 = const Color(0xffd1fcfc);
  static Color blue200 = const Color(0xffaaf6f7);
  static Color blue400 = const Color(0xff2ddbe3);
  static Color blue500 = const Color(0xff1199a9);
  static Color blue600 = const Color(0xff1198a9);
  static Color blue950 = const Color(0xff0b3741);
}

abstract class SecondaryColor {
  static Color green = const Color(0xff22B07D);
  static Color orange = const Color(0xffFF8700);
  static Color red = const Color(0xffFF7256);
  static Color darkGrey = const Color(0xff696974);
}

abstract class TextColor {
  static Color black = const Color(0xff171725);
  static Color darkGrey = const Color(0xff696974);
  static Color whiteGrey = const Color(0xffF1F1F5);
  static Color grey = const Color(0xff92929D);
  static Color white = const Color(0xffFFFFFF);
  static Color lineDark = const Color(0xff363636);
}
