import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/detail_movie/data/entity/credits/cast/cast_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/theme/color_scheme.dart';

import 'package:ui_kit/theme/theme_context_extension.dart';

class CastList extends StatelessWidget {
  const CastList({
    super.key,
    required this.casts,
    this.onTap,
  });

  final List<CastEntity> casts;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: casts.length,
        itemBuilder: (context, index) {
          final actors = casts[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(
                  AppRouterName.detailActorName,
                  extra: actors.id,
                );
              },
              child: SizedBox(
                width: 120,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: CachedNetworkImageProvider(
                        actors.image,
                      ),
                    ),
                    Text(
                      actors.name,
                      style: context.textStyle.h4,
                    ),
                    if (actors.character != '')
                      Text(
                        actors.character,
                        style: context.textStyle.h4.copyWith(
                          color: TextColor.grey,
                        ),
                      )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
