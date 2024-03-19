// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/core/failure/failure.dart';
import 'package:client/features/detail_movie/data/dtos/backdrops_movie/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/data/dtos/credits/credits_dto.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/entity/backdrops_movie/backdrops_movie_entity.dart';
import 'package:client/features/detail_movie/data/entity/credits/credits_entity.dart';
import 'package:client/features/detail_movie/data/entity/movie_detail/movie_detail_entity.dart';
import 'package:client/features/detail_movie/data/mappers/backdrops_movie_mapper.dart';
import 'package:client/features/detail_movie/data/mappers/credits_mapper.dart';
import 'package:client/features/detail_movie/data/mappers/detail_movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IDetailMovieRepository {
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({
    required int id,
  });
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
      var listBackdropsImage = <BackdropMoviesEntity>[];
      backdropsImage.fold((failure) {}, (backdropsImage) {
        listBackdropsImage = backdropsImage;
      });
      final cast = await getCreditsMovie(id: id);
      var credits = const CreditsEntity(crew: [], cast: []);
      cast.fold((failure) {}, (cast) {
        credits = cast;
      });
      movieDetailEntity = movieDetailDto.toDomain(
          credits: credits, backdrops: listBackdropsImage);
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
        final results = responseData['backdrops'] as List<dynamic>;
        for (final data in results) {
          dtos.add(BackdropMoviesDTO.fromJson(data as Map<String, dynamic>));
        }
        final backdropsMovie = dtos.map((dto) => dto.toDomain()).toList();
        return right(backdropsMovie);
      } else {
        return left(const Failure.serverError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }

  Future<Either<Failure, CreditsEntity>> getCreditsMovie({
    required int id,
  }) async {
    try {
      final url = '${MovieQuery.baseUrl}$id/credits';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      if (responseData is Map<String, dynamic>) {
        final backdropsDTO = CreditsDTO.fromJson(responseData);
        final backdropsMovie = backdropsDTO.toDomain();
        return right(backdropsMovie);
      } else {
        return left(const Failure.serverError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
