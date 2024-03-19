import 'package:client/features/movie/data/entity/movie.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'detail_actor_entity.g.dart';

@HiveType(typeId: 1)
class DetailActorEntity extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final DateTime? deathday;
  @HiveField(3)
  final DateTime birthday;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final List<MovieEntity>? alsoKnownAs;
  @HiveField(6)
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
  List<Object?> get props => [name, deathday, birthday, image, biography, id];
}
