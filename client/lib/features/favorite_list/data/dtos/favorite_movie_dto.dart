import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'favorite_movie_dto.freezed.dart';
part 'favorite_movie_dto.g.dart';

@HiveType(typeId: 11)
@freezed
class FavoriteMovieDTO with _$FavoriteMovieDTO {
  factory FavoriteMovieDTO({
    @HiveField(1)
    @JsonKey(name: 'movie', defaultValue: null)
    required MovieDTO? movie,
    @HiveField(2)
    @JsonKey(name: 'createdAt', defaultValue: DateTime.now)
    required DateTime createdAt,
  }) = _FavoriteMovieDTO;

  factory FavoriteMovieDTO.fromJson(Map<String, dynamic> json) =>
      _$FavoriteMovieDTOFromJson(json);
}
