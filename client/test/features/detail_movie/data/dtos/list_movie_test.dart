import 'dart:convert';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
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
  final testListMovieDTO = ListMovieDTO(
    page: 1,
    movies: [testDetailMovie],
  );
  test(
    'should be a subclass of ListMovieDTO',
    () async {
      expect(testListMovieDTO, isInstanceOf<ListMovieDTO>());
    },
  );

  test(
    'ListMovieDTO should return a valid model from json',
    () async {
      // arrange
      final jsonMap = json.decode(readJson(
          'helpers/dummy_data/dummy_popular_list_movie_response.json'));

      // act
      final popularMovie =
          ListMovieDTO.fromJson(jsonMap as Map<String, dynamic>);

      // expect
      expect(popularMovie, isInstanceOf<ListMovieDTO>());
    },
  );
}
