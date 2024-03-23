import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'movie_dto.g.dart';
part 'movie_dto.freezed.dart';

@freezed
@HiveType(typeId: 3)
class MovieDTO with _$MovieDTO {
  MovieDTO._();
  factory MovieDTO({
    @HiveField(0) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(1)
    @JsonKey(name: 'title', defaultValue: '')
    required String title,
    @HiveField(2)
    @JsonKey(name: 'original_title', defaultValue: '')
    required String originalTitle,
    @HiveField(3)
    @JsonKey(name: 'overview', defaultValue: '')
    required String description,
    @HiveField(4)
    @JsonKey(name: 'popularity', defaultValue: 0)
    required double popularity,
    @HiveField(5)
    @JsonKey(name: 'poster_path', defaultValue: '')
    required String posterPath,
    @HiveField(6)
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPath,
    @HiveField(7)
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
    @HiveField(8)
    @JsonKey(name: 'vote_average', defaultValue: 0)
    required double voteAverage,
    @HiveField(9)
    @JsonKey(name: 'genre_ids', defaultValue: [])
    required List<int> genres,
    @HiveField(10)
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
  }) = _MovieCardDTO;

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);
}
