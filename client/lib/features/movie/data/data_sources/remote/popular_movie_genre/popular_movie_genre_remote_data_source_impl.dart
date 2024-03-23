// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/features/genre_list/data/repositories/genre_repository_impl.dart';
import 'package:client/features/movie/data/data_sources/remote/popular_movie_genre/popular_movie_genre_remote_data_source.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class _Constant {
  static const int sizeList = 10;
}

class PopularMovieGenreRemoteDataSourceImpl
    implements PopularMovieGenreRemoteDataSource {
  final Dio _dio;
  final GenreRepositoryImpl _genreRepository;

  PopularMovieGenreRemoteDataSourceImpl({
    required GenreRepositoryImpl genreRepository,
    required Dio dio,
  })  : _dio = dio,
        _genreRepository = genreRepository;

  @override
  Future<ListMovieEntity> getPopularMovieGenre({
    required int genreId,
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

          if (genreId == 0) {
            // Если жанру не указан, используем все фильмы без фильтрации
            filteredMovies = popularMoviesGenre.movies ?? [];
          } else {
            // Фильтруем фильмы по жанру
            filteredMovies = popularMoviesGenre.movies
                    ?.where((movie) =>
                        movie.genres.any((element) => element == genreId))
                    .toList() ??
                [];
          }

          // Преобразуем MovieDTO в MovieEntity и добавляем в listMoviesEntity
          final uniqueMoviesFutures = filteredMovies.map((movieDto) async {
            // Получаем жанр из списка жанров по индексу
            final genreEntity =
                await _genreRepository.getGenreListByIds(movieDto.genres);
            return genreEntity.fold((failure) {
              return movieDto.toEntity();
            }, (success) {
              return movieDto.toEntity(listGenre: success);
            });
          }).toList();

          final uniqueMovies = await Future.wait(uniqueMoviesFutures);
          listMoviesEntity.movies.addAll(uniqueMovies);
        } else {
          throw Exception();
        }
      }

      if (listMoviesEntity.movies.length < _Constant.sizeList) {
        throw Exception();
      }

      return listMoviesEntity;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
