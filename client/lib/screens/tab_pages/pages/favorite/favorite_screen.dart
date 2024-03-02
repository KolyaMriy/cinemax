import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    return Scaffold(
      body: Center(
        child: Text(
          'FavoriteScreen',
          style: style.h1,
        ),
      ),
    );
  }
}
