import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class IResetPasswordRepository {
  Future<Either<AuthFailure, Unit?>> resetPassword({
    required String email,
  });
}

class ResetPasswordRepository implements IResetPasswordRepository {
  final AuthRepository _repository;

  ResetPasswordRepository({required AuthRepository repository})
      : _repository = repository;

  @override
  Future<Either<AuthFailure, Unit?>> resetPassword(
      {required String email}) async {
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
