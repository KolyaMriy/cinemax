import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_trailer_dto.freezed.dart';
part 'movie_trailer_dto.g.dart';

@freezed
class MovieTrailerDTO with _$MovieTrailerDTO {
  MovieTrailerDTO._();

  factory MovieTrailerDTO({
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'key', defaultValue: '') required String youtubeKey,
  }) = _MovieTrailerDTO;

  factory MovieTrailerDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieTrailerDTOFromJson(json);
}
