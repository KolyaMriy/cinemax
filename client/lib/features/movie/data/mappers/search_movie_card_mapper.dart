import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:ui_kit/component/search_card/search_card.dart';

extension SearchMovieCardMapper on MovieEntity {
  SearchMovieCardModel toSearchCard() {
    var genreNames = <String>[];
    if (genres != null) {
      genreNames = genres!.map((genre) => genre.name).toList();
    }
    return SearchMovieCardModel(
        title: title,
        originalLanguage: originalLanguage,
        posterPath: posterPath ?? backdropPath!,
        voteAverage: voteAverage,
        genres: genreNames.isEmpty ? null : genreNames,
        releaseDate: releaseDate);
  }
}
