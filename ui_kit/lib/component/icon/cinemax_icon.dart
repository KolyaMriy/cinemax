import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class CinemaxIcon extends StatelessWidget {
  const CinemaxIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.iconColor,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final style = context.iconStyle;
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: style.borderRadius,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          icon,
          color: iconColor ?? style.iconColor,
          size: 24,
        ),
      ),
    );
  }
}
