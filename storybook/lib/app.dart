import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storybook/cinemax_storybook.dart';
import 'package:storybook/pages/component_page.dart';
import 'package:storybook/pages/home/home_page.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StoryBookApp extends StatelessWidget {
  const StoryBookApp({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          return Provider.value(
            value: constraints.maxWidth > 600
                ? EffectiveLayout.expanded
                : EffectiveLayout.compact,
            child: CinemaxStorybook(
              stories: <Story>[
                Story(
                  name: 'Component/InputText',
                  builder: (context) => const ComponentPage(),
                ),
                // Story(
                //   name: 'Youtube',
                //   builder: (context) => MyHomePage(),
                // ),
                Story(
                  name: 'Screens/home',
                  builder: (context) => const HomePage(),
                ),
              ],
            ),
          );
        },
      );
}
