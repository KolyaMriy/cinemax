import 'package:flutter/material.dart';
import 'package:ui_kit/component_style/app_bar_style/app_bar_style.dart';
import 'package:ui_kit/component_style/avatar_style/avatar_style.dart';
import 'package:ui_kit/component_style/button_style/filled_button_style.dart';
import 'package:ui_kit/component_style/button_style/outlined_button_style.dart';
import 'package:ui_kit/component_style/button_style/text_button_style.dart';
import 'package:ui_kit/component_style/check_box_style/check_box_style.dart';
import 'package:ui_kit/component_style/icon_style/icon_style.dart';
import 'package:ui_kit/component_style/input_field_style/input_field_style.dart';
import 'package:ui_kit/component_style/logo_style/cinemax_logo_style.dart';
import 'package:ui_kit/component_style/nav_bar_style/nav_bar_style.dart';
import 'package:ui_kit/component_style/pinput_style/pinput_style.dart';
import 'package:ui_kit/component_style/poster_movie_style/poster_movie.dart';
import 'package:ui_kit/component_style/spacer_style/spacer_style.dart';
import 'package:ui_kit/component_style/switch_style/switch_style.dart';
import 'package:ui_kit/component_style/text_style/text_style.dart';

extension ThemeContextExtension on BuildContext {
  FilledButtonStyle get filledButtonStyle =>
      Theme.of(this).extension<FilledButtonStyle>()!;
  TextButtonStyle get textButtonStyle =>
      Theme.of(this).extension<TextButtonStyle>()!;
  OutlinedButtonStyle get outlinedButtonStyle =>
      Theme.of(this).extension<OutlinedButtonStyle>()!;
  CheckboxStyle get checkBoxStyle => Theme.of(this).extension<CheckboxStyle>()!;
  SwitchStyle get switchStyle => Theme.of(this).extension<SwitchStyle>()!;
  LogoStyle get logoStyle => Theme.of(this).extension<LogoStyle>()!;
  IconStyle get iconStyle => Theme.of(this).extension<IconStyle>()!;
  AppBarStyle get appBarStyle => Theme.of(this).extension<AppBarStyle>()!;
  TextStyles get textStyle => Theme.of(this).extension<TextStyles>()!;
  InputFieldStyle get inputFieldStyle =>
      Theme.of(this).extension<InputFieldStyle>()!;
  NavBarStyle get navBarStyle => Theme.of(this).extension<NavBarStyle>()!;
  PinputStyle get pinputStyle => Theme.of(this).extension<PinputStyle>()!;
  AvatarStyle get avatarStyle => Theme.of(this).extension<AvatarStyle>()!;
  PosterMovieStyle get posterMovieStyle =>
      Theme.of(this).extension<PosterMovieStyle>()!;
  SpacerStyle get spacerStyle => Theme.of(this).extension<SpacerStyle>()!;
}
