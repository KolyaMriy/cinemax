import 'package:client/features/movie/data/dtos/youtube_trailer/youtube_trailer_dto.dart';
import 'package:client/features/movie/data/entity/youtube_trailer_entity.dart';

extension YoutubeTrailerMapper on YoutubeTrailerDTO {
  YouTubeTrailerEntity toDomain() => YouTubeTrailerEntity(
        name: name,
        youtubeKey: youtubeKey,
      );
}
