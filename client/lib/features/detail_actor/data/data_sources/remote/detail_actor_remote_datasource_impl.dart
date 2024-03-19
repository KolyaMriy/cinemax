// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/features/detail_actor/data/data_sources/remote/detail_actor_remote_datasource.dart';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_actor/data/entity/detail_actor_entity.dart';
import 'package:client/features/detail_actor/data/mappers/detail_actor_mapper.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DetailActorRemoteDataSourceImpl implements DetailActorRemoteDataSource {
  final Dio _dio;

  DetailActorRemoteDataSourceImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<DetailActorEntity> getDetailActor({required int actorID}) async {
    try {
      final url = '${MovieQuery.baseUrlPerson}$actorID';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;
      final movieDetailDto =
          DetailActorDTO.fromJson(responseData as Map<String, dynamic>);
      final backdropsImage = await getCastMovie(actorId: actorID);
      final detailActorEntity =
          movieDetailDto.toDomain(castMovie: backdropsImage);
      return detailActorEntity;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }

  // @override
  // Future<DetailActorEntity> getDetailActor({
  //   required int id,
  // }) async {
  //   try {
  //     final url = '${MovieQuery.baseUrlPerson}$id';
  //     final response =
  //         await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
  //     final responseData = response.data;
  //     final movieDetailDto =
  //         DetailActorDTO.fromJson(responseData as Map<String, dynamic>);
  //     final backdropsImage = await getCastMovie(id: id);
  //     var listMovie = <MovieEntity>[];
  //     backdropsImage.fold((failure) {}, (castMovie) {
  //       listMovie = castMovie;
  //     });
  //     final detailActorEntity = movieDetailDto.toDomain(castMovie: listMovie);
  //     return detailActorEntity;
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  @override
  Future<List<MovieEntity>> getCastMovie({
    required int actorId,
  }) async {
    try {
      final url = '${MovieQuery.baseUrlPerson}$actorId/movie_credits';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data as Map<String, dynamic>;
      final dtos = <MovieDTO>[];

      final results = responseData['cast'] as List<dynamic>;
      for (final data in results) {
        dtos.add(MovieDTO.fromJson(data as Map<String, dynamic>));
      }
      final castMovies = dtos.map((dto) => dto.toDomain()).toList();
      return castMovies;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

//   Future<Either<Failure, CreditsEntity>> getCreditsMovie({
//     required int id,
//   }) async {
//     try {
//       final url = '${MovieQuery.baseUrl}$id/credits';
//       final response =
//           await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
//       final responseData = response.data;
//       if (responseData is Map<String, dynamic>) {
//         final backdropsDTO = CreditsDTO.fromJson(responseData);
//         final backdropsMovie = backdropsDTO.toDomain();
//         return right(backdropsMovie);
//       } else {
//         return left(const Failure.serverError());
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//       return left(const Failure.serverError());
//     }
//   }
// }
}
