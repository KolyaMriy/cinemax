import 'package:client/core/flavor/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class FlavorBanner extends StatefulWidget {
  final Widget child;
  final FlavorConfig config;
  final Color? color;
  final BannerLocation? bannerLocation;

  const FlavorBanner({
    super.key,
    required this.child,
    required this.config,
    this.color,
    this.bannerLocation,
  });

  @override
  FlavorBannerState createState() => FlavorBannerState();
}

class FlavorBannerState extends State<FlavorBanner> {
  @override
  Widget build(BuildContext context) {
    if (widget.config.isProd()) {
      return widget.child;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: widget.color ?? PrimaryColor.blueAccent,
        message: 'dev',
        location: widget.bannerLocation ?? BannerLocation.bottomEnd,
        child: widget.child,
      ),
    );
  }
}
