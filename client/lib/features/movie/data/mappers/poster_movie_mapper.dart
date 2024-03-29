import 'package:client/core/api/api_config.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:intl/intl.dart';
import 'package:ui_kit/component/poster_movie/poster_movie_model.dart';

extension PosterMovieMapper on MovieEntity {
  PosterMovieModel toPoster() => PosterMovieModel(
        title: title,
        backdropPath: '${MovieQuery.baseImageHttp}$backdropPath',
        release: releaseDate != null
            ? DateFormat('MMMM d').format(releaseDate!)
            : null,
      );
}
