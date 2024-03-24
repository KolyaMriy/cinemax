// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/movie_recommendations/movie_remote_datasource.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MovieRecommendationRemoteDataSourceImpl
    implements MovieRecommendationRemoteDataSource {
  final Dio _dio;
  final GenreRepositoryImpl _repository;

  MovieRecommendationRemoteDataSourceImpl({
    required GenreRepositoryImpl repository,
    required Dio dio,
  })  : _dio = dio,
        _repository = repository;

  @override
  Future<ListMovieEntity> getMovieRecommendation({
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
          final result = await _repository.getGenreListByIds(movieDto.genres);
          return result.fold(
            (empty) => movieDto.toEntity(),
            (genres) => movieDto.toEntity(listGenre: genres),
          );
        }).toList();
        final movies = await Future.wait(listMovieWithGenre!);
        listMoviesEntity.movies.addAll(movies);
        return listMoviesEntity;
      } else {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
