import 'package:client/features/movie/domain/entity/movie.dart';
import 'package:equatable/equatable.dart';

class DetailActorEntity extends Equatable {
  final int id;
  final String name;
  final DateTime? deathday;
  final DateTime birthday;
  final String image;
  final List<MovieEntity>? alsoKnownAs;
  final String biography;

  const DetailActorEntity({
    required this.id,
    required this.biography,
    this.alsoKnownAs,
    required this.name,
    this.deathday,
    required this.birthday,
    required this.image,
  });

  factory DetailActorEntity.empty() => DetailActorEntity(
        id: 0,
        biography: '',
        name: '',
        image: '',
        birthday: DateTime.now(),
      );

  @override
  List<Object?> get props =>
      [name, deathday, birthday, image, biography, id, alsoKnownAs];
}
