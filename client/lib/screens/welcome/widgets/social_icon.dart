import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
  });

  final double width;
  final double height;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: PrimaryColor.light,
      ),
      child: Icon(
        icon,
        size: 40,
        color: PrimaryColor.soft,
      ),
    );
  }
}
