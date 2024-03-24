
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'genre_dto.g.dart';
part 'genre_dto.freezed.dart';

@freezed
@HiveType(typeId: 3)
class GenreDTO with _$GenreDTO {
  GenreDTO._();

  factory GenreDTO({
    @HiveField(0) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(1) @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _GenreDTO;

  factory GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$GenreDTOFromJson(json);
}
