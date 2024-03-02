import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class CinemaxLogo extends StatelessWidget {
  const CinemaxLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.logoStyle;
    final mediaSize = MediaQuery.of(context).size;
    final double logoVerticalPadding;
    if (mediaSize.width < 600 && !kIsWeb) {
      logoVerticalPadding = 20;
    } else {
      logoVerticalPadding = 36;
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: logoVerticalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 120,
              maxHeight: 180,
            ),
            child: SvgPicture.asset(
              ImageAssets.cinemaxLogo,
              color: style.primaryColor,
              package: 'ui_kit',
            ),
          ),
        ],
      ),
    );
  }
}
