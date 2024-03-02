import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/poster_movie/poster_movie_model.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({
    super.key,
    required this.posterMovie,
    this.onTap,
  });

  final PosterMovieModel posterMovie;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.posterMovieStyle;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: style.width,
        height: style.height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: style.borderRadius,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(posterMovie.backdropPath)),
          ),
          child: Padding(
            padding: style.contentPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: style.borderRadius,
                  ),
                  child: IntrinsicWidth(
                    child: ListTile(
                      title: Text(posterMovie.title, style: style.titleStyle),
                      subtitle: Text(
                          posterMovie.release != null
                              ? 'On ${posterMovie.release}'
                              : 'No release date available',
                          style: style.releaseStyle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
