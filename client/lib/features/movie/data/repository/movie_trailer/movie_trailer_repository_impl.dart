// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/movie_trailer/data/dtos/youtube_trailer/youtube_trailer_dto.dart';
import 'package:client/features/movie_trailer/data/entity/youtube_trailer_entity.dart';
import 'package:client/features/movie_trailer/data/mappers/youtube_trailer_mapper.dart';
import 'package:client/features/movie/data/repository/movie_trailer/movie_trailer_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MovieTrailerRepositoryImpl implements MovieTrailerRepository {
  final Dio _dio;

  MovieTrailerRepositoryImpl({
    required Dio dio,
  }) : _dio = dio;
  @override
  Future<Either<Failure, YouTubeTrailerEntity>> getMovieTrailer({
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
        YoutubeTrailerDTO? movieTrailerDTO;

        for (final data in results) {
          final movieDto =
              YoutubeTrailerDTO.fromJson(data as Map<String, dynamic>);
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
            final movieDto = YoutubeTrailerDTO.fromJson(
                results.first as Map<String, dynamic>);
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
