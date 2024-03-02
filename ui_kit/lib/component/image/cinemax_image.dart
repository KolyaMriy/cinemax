import 'package:flutter/material.dart';
import 'package:ui_kit/component/image/network_image.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class _Constants {
  static const int duration = 500;
}

class CinemaxImage extends StatefulWidget {
  final String imageUrl;
  final double? imageSize;
  final Animation<double>? opacity;

  const CinemaxImage({
    super.key,
    required this.imageUrl,
    this.imageSize,
    this.opacity,
  });

  @override
  CinemaxImageState createState() => CinemaxImageState();
}

class CinemaxImageState extends State<CinemaxImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: _Constants.duration),
    );
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.imageSize,
      height: widget.imageSize,
      decoration: BoxDecoration(
        color: PrimaryColor.soft,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ImageNetwork(
          opacity: widget.opacity,
          imageUrl: widget.imageUrl,
          fadeAnimation: _fadeAnimation,
          animationController: _animationController,
        ),
      ),
    );
  }
}
