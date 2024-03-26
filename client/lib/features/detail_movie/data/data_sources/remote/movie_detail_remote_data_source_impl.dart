// ignore_for_file: inference_failure_on_function_invocation

import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/data/data_sources/remote/movie_detail_remote_data_source.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/domain/entity/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/mappers/detail_movie_mapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DetailMovieRemoteDataSourceImpl implements DetailMovieRemoteDataSource {
  final Dio _dio;

  DetailMovieRemoteDataSourceImpl({required Dio dio}) : _dio = dio;
  @override
  Future<MovieDetailEntity> getMovieDetail({
    required int idMovie,
  }) async {
    try {
      final url = '${MovieQuery.baseUrl}$idMovie';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final movieDetailDto =
          MovieDetailDTO.fromJson(responseData as Map<String, dynamic>);
      final movieDetailEntity = movieDetailDto.toEntity();
      return movieDetailEntity;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
