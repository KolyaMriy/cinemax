// ignore_for_file: inference_failure_on_function_invocation
import 'package:client/core/api/api_config.dart';
import 'package:client/features/genre_list/data/data_source/remote/genre_remote_datasource.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/domain/entity/genre_entity.dart';
import 'package:client/features/genre_list/data/mappers/genre_mappers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GenreRemoteDataSourceImpl implements GenreRemoteDataSource {
  GenreRemoteDataSourceImpl({
    required Dio dio,
  }) : _dio = dio;
  final Dio _dio;

  @override
  Future<List<GenreEntity>> getGenreList() async {
    try {
      final dtos = <GenreDTO>[];
      const url = MovieQuery.genreUrl;
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('genres')) {
        final results = responseData['genres'] as List<dynamic>;
        for (final data in results) {
          dtos.add(GenreDTO.fromJson(data as Map<String, dynamic>));
        }
      } else {
        throw Exception();
      }
      final genreEntity = dtos.map((dto) => dto.toEntity()).toList();

      return genreEntity;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }

  @override
  Future<List<GenreEntity>> getGenreListByIds(List<int> idsGenre) async {
    try {
      final dtos = <GenreDTO>[];
      const url = MovieQuery.genreUrl;
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('genres')) {
        final results = responseData['genres'] as List<dynamic>;

        for (final data in results) {
          final dto = GenreDTO.fromJson(data as Map<String, dynamic>);
          // Проверяем, если ли id жанру в списке idsGenre
          if (idsGenre.contains(dto.id)) {
            dtos.add(dto);
          }
        }
      } else {
        throw Exception();
      }
      final genreEntity = dtos.map((dto) => dto.toEntity()).toList();

      return genreEntity;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
