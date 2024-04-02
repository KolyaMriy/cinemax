part of 'theme_switcher_cubit.dart';

@freezed
class ThemeSwitcherState with _$ThemeSwitcherState {
  factory ThemeSwitcherState({
    required ThemeData theme,
    @Default(true) bool isDarkMode,
    Failure? failure,
  }) = _ThemeSwitcherState;
}
