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

final ThemeData darkTheme = ThemeData(
  primaryColor: PrimaryColor.light,
  scaffoldBackgroundColor: TextColor.black,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    circularTrackColor: PrimaryColor.dark,
    color: PrimaryColor.blueAccent,
  ),
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    FilledButtonStyle.dark(),
    TextButtonStyle.dark(),
    OutlinedButtonStyle.dark(),
    CheckboxStyle.dark(),
    SwitchStyle.dark(),
    LogoStyle.dark(),
    IconStyle.dark(),
    AppBarStyle.dark(),
    TextStyles.dark(),
    InputFieldStyle.dark(),
    NavBarStyle.dark(),
    PinputStyle.dark(),
    AvatarStyle.dark(),
    PosterMovieStyle.dark(),
    SpacerStyle(),
  ],
);
