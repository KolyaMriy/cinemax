import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({
    super.key,
    required this.averageRating,
    this.backgroundColor,
    this.alignment,
  });

  final double averageRating;
  final Color? backgroundColor;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Align(
        alignment: alignment ?? Alignment.bottomRight,
        child: IntrinsicWidth(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(
                    CinemaxIcons.star,
                    color: SecondaryColor.orange,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    averageRating.toStringAsFixed(2),
                    style: context.textStyle.h6.copyWith(
                      color: SecondaryColor.orange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
