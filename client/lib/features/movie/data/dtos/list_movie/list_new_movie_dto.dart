import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_new_movie_dto.g.dart';
part 'list_new_movie_dto.freezed.dart';

@freezed
class ListMovieDTO with _$ListMovieDTO {
  ListMovieDTO._();

  factory ListMovieDTO({
    @JsonKey(name: 'results', defaultValue: []) required List<MovieDTO>? movies,
    @JsonKey(name: 'page', defaultValue: 1) required int page,
  }) = _ListNewMovieDTO;

  factory ListMovieDTO.fromJson(Map<String, dynamic> json) =>
      _$ListMovieDTOFromJson(json);
}
