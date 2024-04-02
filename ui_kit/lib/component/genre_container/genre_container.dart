import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class GenreContainer extends StatelessWidget {
  const GenreContainer({
    super.key,
    required this.genre,
    required this.isActive,
  });

  final String genre;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final style = context.genreContainerStyle;
    return Padding(
      padding: style.padding,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isActive ? style.activeColor : Colors.transparent,
          borderRadius: style.borderRadius,
        ),
        child: Padding(
          padding: style.contentPadding,
          child: Center(
            child: IntrinsicWidth(
              stepWidth: 80,
              child: Text(
                genre,
                textAlign: TextAlign.center,
                style: context.textStyle.h5.copyWith(
                  color: isActive ? style.textActiveColor : style.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
