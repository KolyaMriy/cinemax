import 'package:bloc/bloc.dart';
import 'package:client/core/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/theme/dark_theme.dart';
import 'package:ui_kit/theme/light_theme.dart';

part 'theme_switcher_state.dart';
part 'theme_switcher_cubit.freezed.dart';

class ThemeSwitcherCubit extends Cubit<ThemeSwitcherState> {
  ThemeSwitcherCubit() : super(ThemeSwitcherState(theme: lightTheme));

  void switchTheme({required bool isDarkMode}) {
    try {
      emit(state.copyWith(
        theme: isDarkMode ? darkTheme : lightTheme,
        isDarkMode: isDarkMode,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          failure: const Failure.serverError(),
        ),
      );
    }
  }
}
