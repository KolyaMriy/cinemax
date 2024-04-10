import 'dart:convert';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';

import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/json_reader.dart';

void main() async {
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
  test(
    'should be a subclass of MovieDto',
    () async {
      expect(testDetailMovie, isInstanceOf<MovieDTO>());
    },
  );

  test(
    'MovieDto should return a valid model from json',
    () async {
      // arrange
      final jsonMap = json.decode(
          readJson('helpers/dummy_data/dummy_detail_movie_response.json'));

      // act
      final detailMovieDTO = MovieDTO.fromJson(jsonMap as Map<String, dynamic>);

      // expect
      expect(detailMovieDTO, isInstanceOf<MovieDTO>());
    },
  );
}
