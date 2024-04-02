import 'package:client/features/theme_switcher/presentation/cubit/theme_switcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/switch/cinemax_switch.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.contrast,
                      color: PrimaryColor.blueAccent,
                    ),
                    SizedBox(width: context.spacerStyle.width),
                    Text(
                      'Dark Mode',
                      style: context.textStyle.h4
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                CinemaxSwitch(
                  value: state.isDarkMode,
                  onChanged: (value) => context
                      .read<ThemeSwitcherCubit>()
                      .switchTheme(isDarkMode: value),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(
                color: PrimaryColor.dark,
                thickness: 2,
              ),
            )
          ],
        );
      },
    );
  }
}
