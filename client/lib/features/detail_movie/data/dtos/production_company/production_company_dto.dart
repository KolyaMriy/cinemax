import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'production_company_dto.freezed.dart';
part 'production_company_dto.g.dart';

@freezed
@HiveType(typeId: 9)
class ProductionCompanyDTO with _$ProductionCompanyDTO {
  ProductionCompanyDTO._();

  factory ProductionCompanyDTO({
    @HiveField(1) @JsonKey(name: 'id', defaultValue: 0) required int id,
    @HiveField(2) @JsonKey(name: 'name', defaultValue: '') required String name,
    @HiveField(3)
    @JsonKey(name: 'origin_country', defaultValue: '')
    required String country,
    @HiveField(4)
    @JsonKey(name: 'logo_path', defaultValue: '')
    required String logoImage,
  }) = _ProductionCompanyDTO;

  factory ProductionCompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyDTOFromJson(json);
}
