import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'backdrops_movie_dto.g.dart';
part 'backdrops_movie_dto.freezed.dart';

@HiveType(typeId: 1)
@freezed
class BackdropMoviesDTO with _$BackdropMoviesDTO {
  BackdropMoviesDTO._();
  factory BackdropMoviesDTO({
    @HiveField(1)
    @JsonKey(name: 'file_path', defaultValue: '')
    required String image,
    @HiveField(2)
    @JsonKey(name: 'width', defaultValue: 0)
    required double width,
    @HiveField(3)
    @JsonKey(name: 'height', defaultValue: 0)
    required double height,
    @HiveField(4)
    @JsonKey(name: 'aspect_ratio', defaultValue: 0)
    required double aspectRatio,
  }) = _BackdropMoviesDTO;

  factory BackdropMoviesDTO.fromJson(Map<String, dynamic> json) =>
      _$BackdropMoviesDTOFromJson(json);
}
