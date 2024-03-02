import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class ILoginRepository {
  Future<Either<AuthFailure, Unit?>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class LoginRepository implements ILoginRepository {
  final AuthRepository _repository;

  LoginRepository({required AuthRepository repository})
      : _repository = repository;

  @override
  Future<Either<AuthFailure, Unit?>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _repository.loginWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
