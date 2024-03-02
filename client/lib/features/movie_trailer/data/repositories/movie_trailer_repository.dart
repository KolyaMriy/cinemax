// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/movie_trailer/data/dtos/movie_trailer_dto.dart';
import 'package:client/features/movie_trailer/data/entity/movie_trailer_entity.dart';
import 'package:client/features/movie_trailer/data/mappers/movie_trailer_mapper.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IMovieTrailerRepository {
  Future<Either<Failure, MovieTrailerEntity>> getMovieTrailer({
    required int id,
  });
}

class MovieTrailerRepository implements IMovieTrailerRepository {
  final Dio _dio;

  MovieTrailerRepository({required Dio dio}) : _dio = dio;
  @override
  Future<Either<Failure, MovieTrailerEntity>> getMovieTrailer({
    required int id,
  }) async {
    try {
      final url = '${MovieQuery.baseUrl}$id/${MovieQuery.queryTrailer}';
      final response = await _dio.get(
        url,
        queryParameters: MovieQuery.queryParametersBase,
      );
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('results')) {
        final results = responseData['results'] as List<dynamic>;
        MovieTrailerDTO? movieTrailerDTO;

        for (final data in results) {
          final movieDto =
              MovieTrailerDTO.fromJson(data as Map<String, dynamic>);
          if (movieDto.name == 'Official Trailer') {
            movieTrailerDTO = movieDto;
            break; // Найден официальный трейлер, выходим из цикла
          }
        }

        if (movieTrailerDTO != null) {
          final movieTrailerEntity = movieTrailerDTO.toDomain();
          return right(movieTrailerEntity);
        } else {
          // Если официальный трейлер не найден, возвращаем первый трейлер
          if (results.isNotEmpty) {
            final movieDto =
                MovieTrailerDTO.fromJson(results.first as Map<String, dynamic>);
            final movieTrailerEntity = movieDto.toDomain();
            return right(movieTrailerEntity);
          } else {
            return left(const Failure.serverError());
          }
        }
      } else {
        return left(const Failure.serverError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
