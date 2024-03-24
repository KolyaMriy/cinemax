import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'crew_dto.freezed.dart';
part 'crew_dto.g.dart';

@HiveType(typeId: 6)
@freezed
class CrewDTO with _$CrewDTO {
  factory CrewDTO({
    @HiveField(1) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(2) @JsonKey(name: 'name', defaultValue: '') required String name,
    @HiveField(3) @JsonKey(name: 'job', defaultValue: '') required String job,
    @HiveField(4)
    @JsonKey(name: 'department', defaultValue: '')
    required String department,
    @HiveField(5)
    @JsonKey(name: 'profile_path', defaultValue: '')
    required String image,
    @HiveField(6)
    @JsonKey(name: 'popularity', defaultValue: 0)
    required double popularity,
    @HiveField(7)
    @JsonKey(name: 'known_for_department', defaultValue: '')
    required String knownForDepartment,
  }) = _CrewDTO;

  factory CrewDTO.fromJson(Map<String, dynamic> json) =>
      _$CrewDTOFromJson(json);
}
