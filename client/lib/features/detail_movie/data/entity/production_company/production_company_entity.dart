import 'package:equatable/equatable.dart';

class ProductionCompanyEntity extends Equatable {
  final int id;
  final String? logoImage;
  final String name;
  final String country;

  const ProductionCompanyEntity({
    required this.id,
    required this.logoImage,
    required this.name,
    required this.country,
  });

  @override
  List<Object?> get props => [id, logoImage, name, country];
}
