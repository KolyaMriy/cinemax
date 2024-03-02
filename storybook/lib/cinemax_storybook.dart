import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:ui_kit/theme/dark_theme.dart';
import 'package:ui_kit/theme/light_theme.dart';

class CinemaxStorybook extends Storybook {
  CinemaxStorybook({
    super.key,
    required super.stories,
  }) : super(
          wrapperBuilder: (context, widget) {
            return MaterialApp(
              darkTheme: darkTheme,
              theme: lightTheme,
              home: Scaffold(
                body: widget,
              ),
            );
          },
        );

  @override
  List<Plugin> get plugins => <Plugin>[
        DeviceFramePlugin(),
        const ContentsPlugin(),
        const KnobsPlugin(),
        ThemeModePlugin(),
      ];
}
