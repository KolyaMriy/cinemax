import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cast_dto.freezed.dart';
part 'cast_dto.g.dart';

@HiveType(typeId: 7)
@freezed
class CastDTO with _$CastDTO {
  factory CastDTO({
    @HiveField(1) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(2) @JsonKey(name: 'name', defaultValue: '') required String name,
    @HiveField(3)
    @JsonKey(name: 'character', defaultValue: '')
    required String character,
    @HiveField(4)
    @JsonKey(name: 'profile_path', defaultValue: '')
    required String image,
    @HiveField(5)
    @JsonKey(name: 'popularity', defaultValue: 0)
    required double popularity,
    @HiveField(6)
    @JsonKey(name: 'known_for_department', defaultValue: '')
    required String knownForDepartment,
  }) = _CastDTO;

  factory CastDTO.fromJson(Map<String, dynamic> json) =>
      _$CastDTOFromJson(json);
}
