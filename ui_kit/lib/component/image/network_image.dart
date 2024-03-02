import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class ImageNetwork extends StatelessWidget {
  final String imageUrl;
  final Animation<double>? opacity;

  final Animation<double> fadeAnimation;
  final AnimationController animationController;

  const ImageNetwork({
    super.key,
    required this.imageUrl,
    required this.fadeAnimation,
    required this.animationController,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      opacity: opacity,
      errorBuilder: (context, error, stackTrace) {
        return FadeTransition(
          opacity: fadeAnimation,
          child: ColoredBox(
            color: PrimaryColor.soft,
          ),
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          animationController.forward();
          return FadeTransition(
            opacity: fadeAnimation,
            child: child,
          );
        }
        return FadeTransition(
          opacity: fadeAnimation,
          child: ColoredBox(
            color: PrimaryColor.soft,
          ),
        );
      },
    );
  }
}
