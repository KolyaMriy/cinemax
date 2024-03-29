import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class SignUpRepository {
  Future<Either<AuthFailure, Unit?>> signUp({
    required String email,
    required String password,
    required String name,
  });
}
