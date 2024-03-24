import 'package:client/features/detail_movie/data/dtos/production_company/production_company_dto.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'movie_detail_dto.freezed.dart';
part 'movie_detail_dto.g.dart';

@freezed
@HiveType(typeId: 10)
class MovieDetailDTO with _$MovieDetailDTO {
  MovieDetailDTO._();
  factory MovieDetailDTO({
    @HiveField(1) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(2)
    @JsonKey(name: 'title', defaultValue: '')
    required String title,
    @HiveField(3)
    @JsonKey(name: 'production_companies', defaultValue: [])
    required List<ProductionCompanyDTO> productionCompanies,
    @HiveField(4)
    @JsonKey(name: 'genres', defaultValue: [])
    required List<GenreDTO> genres,
    @HiveField(5)
    @JsonKey(name: 'original_language', defaultValue: '')
    required String originalLanguage,
    @HiveField(6)
    @JsonKey(name: 'original_title', defaultValue: '')
    @HiveField(7)
    required String originalTitle,
    @HiveField(8)
    @JsonKey(name: 'overview', defaultValue: '')
    required String description,
    @HiveField(9)
    @JsonKey(name: 'popularity', defaultValue: 0.0)
    required double popularity,
    @HiveField(10)
    @JsonKey(name: 'poster_path', defaultValue: '')
    required String posterPicture,
    @HiveField(11)
    @JsonKey(name: 'backdrop_path', defaultValue: '')
    required String backdropPicture,
    @HiveField(12)
    @JsonKey(name: 'vote_average', defaultValue: 0.0)
    required double voteAverage,
    @HiveField(13)
    @JsonKey(name: 'vote_count', defaultValue: 0.0)
    required double voteCount,
    @HiveField(14)
    @JsonKey(name: 'runtime', defaultValue: 0)
    required int runtime,
    @HiveField(15)
    @JsonKey(name: 'revenue', defaultValue: 0.0)
    required double revenue,
    @HiveField(16)
    @JsonKey(name: 'status', defaultValue: '')
    required String status,
    @HiveField(17)
    @JsonKey(name: 'tagline', defaultValue: '')
    required String tagline,
    @HiveField(18)
    @JsonKey(name: 'release_date', defaultValue: '')
    required String releaseDate,
  }) = _MovieDetailDTO;

  factory MovieDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailDTOFromJson(json);
}
