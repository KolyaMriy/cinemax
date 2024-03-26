// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/data_sources/remote/backdrops_remote_data_source.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/dtos/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/mappers/backdrops_movie_mapper.dart';
import 'package:client/features/detail_movie/movie_backdrops/domain/entity/backdrops_movie_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BackdropsRemoteDataSourceImpl implements BackdropsRemoteDataSource {
  final Dio _dio;

  BackdropsRemoteDataSourceImpl({
    required Dio dio,
  }) : _dio = dio;
  @override
  Future<List<BackdropMoviesEntity>> getBackDropsMovie({
    required int idMovie,
  }) async {
    try {
      final url = '${MovieQuery.baseUrl}$idMovie/images';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final dtos = <BackdropMoviesDTO>[];
      if (responseData is Map<String, dynamic>) {
        final results = responseData['backdrops'] as List<dynamic>;
        for (final data in results) {
          dtos.add(BackdropMoviesDTO.fromJson(data as Map<String, dynamic>));
        }
        final backdropsMovie = dtos.map((dto) => dto.toEntity()).toList();
        return backdropsMovie;
      } else {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
