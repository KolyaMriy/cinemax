// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/detail_movie/data/dtos/backdrops_movie/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/entity/backdrops_movie/backdrops_movie_entity.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/mappers/backdrops_movie_mapper.dart';
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
      var movieDetailEntity = MovieDetailEntity.empty();
      final url = '${MovieQuery.baseUrl}$id';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final movieDetailDto =
          MovieDetailDTO.fromJson(responseData as Map<String, dynamic>);
      final backdropsImage = await getBackDropsMovie(id: id);
      backdropsImage.fold((failure) {
        movieDetailEntity = movieDetailDto.toDomain();
      }, (backdropsImage) {
        movieDetailEntity = movieDetailDto.toDomain(backdrops: backdropsImage);
      });

      return right(movieDetailEntity);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  Future<Either<Failure, List<BackdropMoviesEntity>>> getBackDropsMovie({
    required int id,
  }) async {
    try {
      final url = '${MovieQuery.baseUrl}$id/images';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final dtos = <BackdropMoviesDTO>[];
      if (responseData is Map<String, dynamic>) {
        try {
          final results = responseData['backdrops'] as List<dynamic>;
          for (final data in results) {
            dtos.add(BackdropMoviesDTO.fromJson(data as Map<String, dynamic>));
          }
          final backdropsMovie = dtos.map((dto) => dto.toDomain()).toList();
          return right(backdropsMovie);
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
