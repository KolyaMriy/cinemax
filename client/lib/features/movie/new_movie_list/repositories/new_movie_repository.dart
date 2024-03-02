// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/list_movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class INewMovieRepository {
  Future<Either<Failure, ListMovieEntity>> getNewMovieList();
}

class NewMovieRepository implements INewMovieRepository {
  final Dio _dio;
  NewMovieRepository({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Either<Failure, ListMovieEntity>> getNewMovieList() async {
    try {
      const url = '${MovieQuery.baseUrl}${MovieQuery.queryNowPlaying}';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic>) {
        try {
          final newMovieListDTO = ListMovieDTO.fromJson(responseData);
          final listMovieEntity = newMovieListDTO.toDomain();
          return right(listMovieEntity);
        } catch (e) {
          return left(const Failure.parseError());
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
