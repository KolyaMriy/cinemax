import 'package:client/core/api/api_config.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:ui_kit/component/movie_card/movie_card_model.dart';

extension MovieCardMapper on MovieEntity {
  MovieCardModel toCard() => MovieCardModel(
        title: title,
        posterPicture: '${MovieQuery.baseImageHttp}$posterPath',
        averageRating: voteAverage!,
        genres: genres != null ? genres!.map((e) => e.name).toList() : [],
      );
}
