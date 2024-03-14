// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IMovieRecommendationRepository {
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int idMovie,
  });
}

class MovieRecommendationRepository implements IMovieRecommendationRepository {
  final Dio _dio;
  final GenreRepository _genreRepository;

  MovieRecommendationRepository({
    required GenreRepository genreRepository,
    required Dio dio,
  })  : _dio = dio,
        _genreRepository = genreRepository;

  @override
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int idMovie,
  }) async {
    try {
      final listMoviesEntity = ListMovieEntity.empty();
      final url =
          '${MovieQuery.baseUrl}$idMovie/${MovieQuery.queryRecommendations}';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic>) {
        final movieRecommendationDTO = ListMovieDTO.fromJson(responseData);
        final listMovieWithGenre =
            movieRecommendationDTO.movies?.map((movieDto) async {
          final genreEntity =
              await _genreRepository.getGenreListByIds(movieDto.genres);
          return genreEntity.fold((l) {
            return movieDto.toDomain();
          }, (genres) {
            return movieDto.toDomain(listGenre: genres);
          });
        }).toList();
        final movies = await Future.wait(listMovieWithGenre!);
        listMoviesEntity.movies.addAll(movies);
        return right(listMoviesEntity);
      } else {
        return left(const Failure.parseError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
