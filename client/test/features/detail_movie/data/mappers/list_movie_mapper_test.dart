import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/mappers/list_movie_mapper.dart';
import 'package:client/features/movie/domain/entity/list_movie.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final testDetailMovie = MovieDTO(
    id: 12,
    title: '',
    originalTitle: '',
    description: '',
    popularity: 230,
    posterPath: '',
    backdropPath: '',
    releaseDate: '',
    voteAverage: 2,
    originalLanguage: '',
    genres: [],
  );
  final testListMovieDTO = ListMovieDTO(
    page: 1,
    movies: [testDetailMovie],
  );

  test(
    'should convert ListMovieDTO to ListMovieEntity',
    () async {
      expect(testListMovieDTO.toEntity(), isInstanceOf<ListMovieEntity>());
    },
  );
}
