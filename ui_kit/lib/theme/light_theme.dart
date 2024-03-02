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
import 'package:ui_kit/theme/color_scheme.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: PrimaryColor.dark,
  scaffoldBackgroundColor: PrimaryColor.light,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    circularTrackColor: PrimaryColor.dark,
    color: PrimaryColor.blueAccent,
  ),
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    FilledButtonStyle.light(),
    TextButtonStyle.light(),
    OutlinedButtonStyle.light(),
    CheckboxStyle.light(),
    SwitchStyle.light(),
    LogoStyle.light(),
    IconStyle.light(),
    AppBarStyle.light(),
    TextStyles.light(),
    InputFieldStyle.light(),
    NavBarStyle.light(),
    PinputStyle.light(),
    AvatarStyle.light(),
    PosterMovieStyle.light(),
    SpacerStyle(),
  ],
);
