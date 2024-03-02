import 'package:client/core/api/api_config.dart';
import 'package:client/features/movie/data/entity/movie.dart';
import 'package:intl/intl.dart';
import 'package:ui_kit/component/poster_movie/poster_movie_model.dart';

extension PosterMovieMapper on MovieEntity {
  PosterMovieModel toPoster() => PosterMovieModel(
        title: title,
        backdropPath: '${MovieQuery.image}$backdropPath',
        release: releaseDate != null
            ? DateFormat('MMMM d').format(releaseDate!)
            : null,
      );
}
