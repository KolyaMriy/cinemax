import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photoUrl});

  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    final style = context.avatarStyle;
    return CircleAvatar(
      radius: style.borderRadius,
      backgroundColor: style.borderColor,
      child: CircleAvatar(
        radius: style.avatarRadius,
        backgroundImage: const AssetImage(
          ImageAssets.avatarPlaceholder,
          package: 'ui_kit',
        ),
        foregroundImage:
            photoUrl != null ? CachedNetworkImageProvider(photoUrl!) : null,
        onForegroundImageError: (exception, stackTrace) => const AssetImage(
          ImageAssets.avatarPlaceholder,
          package: 'ui_kit',
        ),
      ),
    );
  }
}
