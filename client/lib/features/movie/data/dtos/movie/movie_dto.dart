import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.g.dart';
part 'movie_dto.freezed.dart';

@freezed
class MovieDTO with _$MovieDTO {
  MovieDTO._();

  factory MovieDTO({
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPath,
    @JsonKey(name: 'poster_path', defaultValue: '') required String posterPath,
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'original_title', defaultValue: '')
    required String originalTitle,
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
    @JsonKey(name: 'overview', defaultValue: '') required String description,
    @JsonKey(name: 'popularity', defaultValue: 0) required double popularity,
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
    @JsonKey(name: 'vote_average', defaultValue: 0) required double voteAverage,
    @JsonKey(name: 'genre_ids', defaultValue: []) required List<int> genres,
  }) = _MovieCardDTO;

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);
}
