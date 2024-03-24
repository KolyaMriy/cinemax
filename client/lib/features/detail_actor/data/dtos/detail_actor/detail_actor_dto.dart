import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'detail_actor_dto.freezed.dart';
part 'detail_actor_dto.g.dart';

@freezed
@HiveType(typeId: 2)
class DetailActorDTO with _$DetailActorDTO {
  const factory DetailActorDTO({
    @HiveField(0) @JsonKey(name: 'name', defaultValue: '') required String name,
    @HiveField(1)
    @JsonKey(name: 'biography', defaultValue: '')
    required String biography,
    @HiveField(2)
    @JsonKey(name: 'birthday', defaultValue: '')
    required String birthday,
    @HiveField(3) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(4)
    @JsonKey(name: 'profile_path', defaultValue: '')
    required String image,
    @HiveField(5)
    @JsonKey(name: 'deathday', defaultValue: '')
    required String deathday,
    @HiveField(6)
    @JsonKey(name: 'alsoKnownAs', defaultValue: [])
    required List<MovieDTO> alsoKnownAs,
  }) = _DetailActorDTO;

  factory DetailActorDTO.fromJson(Map<String, dynamic> json) =>
      _$DetailActorDTOFromJson(json);
}
