import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:client/features/movie/domain/entity/movie.dart';
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
    genres: [],
    originalLanguage: '',
  );

  test(
    'should convert MovieDTO to MovieEntity',
    () async {
      expect(testDetailMovie.toEntity(), isInstanceOf<MovieEntity>());
    },
  );
}
