import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/data/entity/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  AuthRepository({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  UserEntity currentUser = UserEntity.empty;

  Stream<UserEntity> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user =
          firebaseUser == null ? UserEntity.empty : firebaseUser.toUser;
      currentUser = user;
      return user;
    });
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> logOut() async {
    try {
      await Future.wait([_firebaseAuth.signOut()]);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> resetPassword({required String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @Deprecated('If Otp code')
  Future<Either<AuthFailure, Unit?>> confirmCode() async {
    try {
      await _firebaseAuth.confirmPasswordReset(
          code: 'code', newPassword: 'newPassword');
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}

extension on firebase_auth.User {
  UserEntity get toUser {
    return UserEntity(
        id: uid,
        name: displayName ?? 'N/A',
        email: email,
        photoUrl: photoURL ?? '');
  }
}
