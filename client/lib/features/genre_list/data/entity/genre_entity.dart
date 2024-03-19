import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'genre_entity.g.dart';

@HiveType(typeId: 2)
class GenreEntity extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;

  const GenreEntity({
    required this.id,
    required this.name,
  });

  factory GenreEntity.allGenre() => const GenreEntity(id: 0, name: 'All');

  @override
  List<Object> get props => [id, name];
}
