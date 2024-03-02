part of 'auth_bloc.dart';

enum AuthStatus { authenticated, unauthenticated }

class AuthState extends Equatable {
  final AuthStatus status;
  final UserEntity user;

  const AuthState._({
    this.user = UserEntity.empty,
    required this.status,
  });

  const AuthState.authenticated(UserEntity user)
      : this._(user: user, status: AuthStatus.authenticated);

  const AuthState.unauthenticated()
      : this._(user: UserEntity.empty, status: AuthStatus.unauthenticated);

  @override
  List<Object> get props => [status, user];
}
