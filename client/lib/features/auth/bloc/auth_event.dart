part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthLogoutRequested extends AuthEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class AuthUserChanged extends AuthEvent {
  final UserEntity user;

  AuthUserChanged({required this.user});
  @override
  List<Object> get props => [user];
}
