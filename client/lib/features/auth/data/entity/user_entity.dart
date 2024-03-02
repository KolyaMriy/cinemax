import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String? name;
  final String? email;
  final String? photoUrl;

  static const empty = UserEntity(
    id: 'id',
  );

  bool get isEmpty => this == UserEntity.empty;
  bool get isNotEmpty => this != UserEntity.empty;

  const UserEntity({
    required this.id,
    this.name,
    this.email,
    this.photoUrl,
  });

  @override
  List<Object?> get props => [id, name, email, photoUrl];
}
