import 'package:equatable/equatable.dart';

class GenreEntity extends Equatable {
  final int id;
  final String name;

  const GenreEntity({
    required this.id,
    required this.name,
  });

  factory GenreEntity.allGenre() => const GenreEntity(id: 0, name: 'All');

  @override
  List<Object> get props => [id, name];
}
