// ignore_for_file: inference_failure_on_function_invocation

import 'dart:math';
import 'package:client/core/api/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class IPopularMovieGenreRepository {
  Future<Either<Failure, ListMovieEntity>> getPopularMovieGenre({
    required GenreEntity genre,
  });
}

abstract class _Constant {
  static const int sizeList = 10;
}

class PopularMovieGenreRepository implements IPopularMovieGenreRepository {
  final Dio _dio;

  PopularMovieGenreRepository({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Either<Failure, ListMovieEntity>> getPopularMovieGenre({
    required GenreEntity genre,
  }) async {
    try {
      final listMoviesEntity = ListMovieEntity.empty();
      var page = 0;

      while (listMoviesEntity.movies.length < _Constant.sizeList) {
        page++;
        final url =
            '${MovieQuery.baseUrl}${MovieQuery.queryPopular}?page=$page';
        final response = await _dio.get(url,
            queryParameters: MovieQuery.queryParametersBase);

        if (response.data is Map<String, dynamic>) {
          final popularMoviesGenre =
              ListMovieDTO.fromJson(response.data as Map<String, dynamic>);
          List<MovieDTO> filteredMovies;

          if (genre.id == 0) {
            // Если жанру не указан, используем все фильмы без фильтрации
            filteredMovies = popularMoviesGenre.movies ?? [];
          } else {
            // Фильтруем фильмы по жанру
            filteredMovies = popularMoviesGenre.movies
                    ?.where((movie) =>
                        movie.genres.any((element) => element == genre.id))
                    .toList() ??
                [];
          }
          // Преобразуем MovieDTO в MovieEntity и добавляем в listMoviesEntity
          final uniqueMovies = filteredMovies
              .map((movieDto) => movieDto.toDomain())
              .toSet()
              .toList()
              .sublist(
                0,
                min(
                  _Constant.sizeList - listMoviesEntity.movies.length,
                  filteredMovies.length,
                ),
              );
          listMoviesEntity.movies.addAll(uniqueMovies);
        } else {
          return left(const Failure.parseError());
        }
      }
      if (listMoviesEntity.movies.length < _Constant.sizeList) {
        return left(const Failure.parseError());
      }

      return right(listMoviesEntity);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
