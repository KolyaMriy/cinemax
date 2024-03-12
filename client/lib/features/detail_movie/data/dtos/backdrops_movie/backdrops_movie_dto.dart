import 'package:freezed_annotation/freezed_annotation.dart';

part 'backdrops_movie_dto.g.dart';
part 'backdrops_movie_dto.freezed.dart';

@freezed
class BackdropMoviesDTO with _$BackdropMoviesDTO {
  BackdropMoviesDTO._();

  factory BackdropMoviesDTO({
    @JsonKey(name: 'file_path', defaultValue: '') required String image,
    @JsonKey(name: 'width', defaultValue: 0) required double width,
    @JsonKey(name: 'height', defaultValue: 0) required double height,
    @JsonKey(name: 'aspect_ratio', defaultValue: 0) required double aspectRatio,
  }) = _BackdropMoviesDTO;

  factory BackdropMoviesDTO.fromJson(Map<String, dynamic> json) =>
      _$BackdropMoviesDTOFromJson(json);
}
