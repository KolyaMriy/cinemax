// ignore_for_file: inference_failure_on_function_invocation

import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_movie/movie_credits/data/data_sources/remote/movie_credits_remote_data_source.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/credits_dto.dart';
import 'package:client/features/detail_movie/movie_credits/domain/entity/credits_entity.dart';
import 'package:client/features/detail_movie/movie_credits/data/mappers/credits_mapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CreditsMovieRemoteDataSourceImpl implements CreditsMovieRemoteDataSource {
  final Dio _dio;

  CreditsMovieRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<CreditsEntity> getMovieCredits({required int idMovie}) async {
    try {
      final url = '${MovieQuery.baseUrl}$idMovie/credits';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final creditsDTO =
          CreditsDTO.fromJson(responseData as Map<String, dynamic>);
      final creditsMovie = creditsDTO.toEntity();
      return creditsMovie;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
