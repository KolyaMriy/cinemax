import 'package:equatable/equatable.dart';

class CastEntity extends Equatable {
  final int id;
  final String knownForDepartment;
  final String name;
  final double popularity;
  final String image;
  final String character;

  const CastEntity({
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.popularity,
    required this.image,
    required this.character,
  });

  @override
  List<Object> get props {
    return [
      id,
      knownForDepartment,
      name,
      popularity,
      image,
      character,
    ];
  }
}
