import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/data/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class ISignUpRepository {
  Future<Either<AuthFailure, Unit?>> signUp({
    required String email,
    required String password,
    required String name,
  });
}

class SignUpRepository implements ISignUpRepository {
  final AuthRepository _repository;

  SignUpRepository({required AuthRepository repository})
      : _repository = repository;

  @override
  Future<Either<AuthFailure, Unit?>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _repository.signUp(
        email: email,
        password: password,
        name: name,
      );
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
