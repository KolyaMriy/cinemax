import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:dartz/dartz.dart';


abstract interface class ResetPasswordRepository {
  Future<Either<AuthFailure, Unit?>> resetPassword({
    required String email,
  });
}
