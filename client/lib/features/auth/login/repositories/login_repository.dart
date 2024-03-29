import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class LoginRepository {
  Future<Either<AuthFailure, Unit?>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}
