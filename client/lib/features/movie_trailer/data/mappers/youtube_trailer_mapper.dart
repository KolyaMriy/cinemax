import 'package:client/features/movie_trailer/data/dtos/youtube_trailer/youtube_trailer_dto.dart';
import 'package:client/features/movie_trailer/domain/entity/youtube_trailer_entity.dart';

extension YoutubeTrailerMapper on YoutubeTrailerDTO {
  YouTubeTrailerEntity toDomain() => YouTubeTrailerEntity(
        name: name,
        youtubeKey: youtubeKey,
      );
}
