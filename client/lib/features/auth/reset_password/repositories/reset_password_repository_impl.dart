import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:client/features/auth/reset_password/repositories/reset_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetPasswordRepositoryImpl implements ResetPasswordRepository {
  final AuthRepository _repository;

  ResetPasswordRepositoryImpl({required AuthRepository repository})
      : _repository = repository;

  @override
  Future<Either<AuthFailure, Unit?>> resetPassword({
    required String email,
  }) async {
    try {
      await _repository.resetPassword(email: email);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
