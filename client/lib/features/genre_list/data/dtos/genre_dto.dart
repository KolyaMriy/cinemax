import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_dto.g.dart';
part 'genre_dto.freezed.dart';

@freezed
class GenreDTO with _$GenreDTO {
  GenreDTO._();

  factory GenreDTO({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _GenreDTO;

  factory GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$GenreDTOFromJson(json);
}
