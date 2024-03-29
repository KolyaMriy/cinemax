// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/genre_list/domain/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:client/features/movie/domain/entity/list_movie.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class ISearchRepository {
  Future<Either<Failure, ListMovieEntity>> getMovie({
    required String query,
  });
}

class SearchRepository implements ISearchRepository {
  final Dio _dio;
  final GenreRepositoryImpl _genreRepository;

  SearchRepository({
    required GenreRepositoryImpl genreRepository,
    required Dio dio,
  })  : _dio = dio,
        _genreRepository = genreRepository;

  @override
  Future<Either<Failure, ListMovieEntity>> getMovie({
    required String query,
  }) async {
    try {
      final listMovieEntity = ListMovieEntity.empty();
      final url = '${MovieQuery.baseUrlSearch}?query=$query';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic>) {
        final searchMoviesDTO = ListMovieDTO.fromJson(responseData);
        final movieFutures = <Future<void>>[];

        searchMoviesDTO.movies?.forEach((movie) {
          final genreEntityFuture =
              _genreRepository.getGenreListByIds(movie.genres);
          movieFutures.add(genreEntityFuture.then((genreEntity) {
            genreEntity.fold(
              (failure) {
                final movieEntity = movie.toEntity();
                listMovieEntity.movies.add(movieEntity);
              },
              (success) {
                final movieEntity = movie.toEntity(listGenre: success);
                listMovieEntity.movies.add(movieEntity);
              },
            );
          }));
        });

        await Future.wait(movieFutures);
        listMovieEntity.movies.removeWhere((movie) => movie.posterPath == null);

        return right(listMovieEntity);
      } else {
        return left(const Failure.serverError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
