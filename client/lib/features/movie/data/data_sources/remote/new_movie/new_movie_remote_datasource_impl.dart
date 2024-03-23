// ignore_for_file: inference_failure_on_function_invocation

import 'package:client/core/api/api_config.dart';
import 'package:client/features/movie/data/data_sources/remote/new_movie/new_movie_remote_datasource.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/list_movie_mapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewMovieRemoteDataSourceImpl implements NewMovieRemoteDataSource {
  final Dio _dio;
  NewMovieRemoteDataSourceImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<ListMovieEntity> getNewMovieList() async {
    try {
      const url = '${MovieQuery.baseUrl}${MovieQuery.queryNowPlaying}';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      if (responseData is Map<String, dynamic>) {
        final newMovieListDTO = ListMovieDTO.fromJson(responseData);
        final listMovieEntity = newMovieListDTO.toEntity();
        return listMovieEntity;
      } else {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
