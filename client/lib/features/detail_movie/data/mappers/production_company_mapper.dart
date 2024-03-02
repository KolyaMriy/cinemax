import 'package:client/features/detail_movie/data/dtos/production_company/production_company_dto.dart';
import 'package:client/features/detail_movie/data/entity/production_company/production_company_entity.dart';

extension ProductionCompany on ProductionCompanyDTO {
  ProductionCompanyEntity toDomain() => ProductionCompanyEntity(
        id: id,
        logoImage: logoImage,
        name: name,
        country: country,
      );
}
