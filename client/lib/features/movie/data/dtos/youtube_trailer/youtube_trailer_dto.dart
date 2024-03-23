import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_trailer_dto.freezed.dart';
part 'youtube_trailer_dto.g.dart';

@freezed
class YoutubeTrailerDTO with _$YoutubeTrailerDTO {
  factory YoutubeTrailerDTO({
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'key', defaultValue: '') required String youtubeKey,
  }) = _YoutubeTrailerDTO;

  factory YoutubeTrailerDTO.fromJson(Map<String, dynamic> json) =>
      _$YoutubeTrailerDTOFromJson(json);
}
