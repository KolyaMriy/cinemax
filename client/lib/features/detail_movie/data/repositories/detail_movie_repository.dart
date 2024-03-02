// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/mappers/detail_movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IDetailMovieRepository {
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({required int id});
}

class DetailMovieRepository implements IDetailMovieRepository {
  final Dio _dio;

  DetailMovieRepository({required Dio dio}) : _dio = dio;

  @override
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({
    required int id,
  }) async {
    try {
      final url = '${MovieQuery.baseUrl}$id';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final movieDetailDto =
          MovieDetailDTO.fromJson(responseData as Map<String, dynamic>);
      final movieDetailEntity = movieDetailDto.toDomain();
      return right(movieDetailEntity);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
