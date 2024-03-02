import 'package:client/features/detail_movie/data/dtos/production_company/production_company_dto.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_dto.freezed.dart';
part 'movie_detail_dto.g.dart';

@freezed
class MovieDetailDTO with _$MovieDetailDTO {
  MovieDetailDTO._();

  factory MovieDetailDTO({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'production_companies', defaultValue: [])
    required List<ProductionCompanyDTO> productionCompanies,
    @JsonKey(name: 'genres', defaultValue: []) required List<GenreDTO> genres,
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
    @JsonKey(name: 'original_title', defaultValue: '')
    required String originalTitle,
    @JsonKey(name: 'overview', defaultValue: '') required String description,
    @JsonKey(name: 'popularity', defaultValue: 0.0) required double popularity,
    @JsonKey(name: 'poster_path', defaultValue: '')
    required String posterPicture,
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPicture,
    @JsonKey(name: 'vote_average', defaultValue: 0.0)
    required double voteAverage,
    @JsonKey(name: 'vote_count', defaultValue: 0.0) required double voteCount,
    @JsonKey(name: 'runtime', defaultValue: 0) required int runtime,
    @JsonKey(name: 'revenue', defaultValue: 0.0) required double revenue,
    @JsonKey(name: 'status', defaultValue: '') required String status,
    @JsonKey(name: 'tagline', defaultValue: '') required String tagline,
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
  }) = _MovieDetailDTO;

  factory MovieDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailDTOFromJson(json);
}
