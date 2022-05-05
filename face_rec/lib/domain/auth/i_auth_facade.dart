import 'package:dartz/dartz.dart';
import 'package:face_rec/domain/auth/auth_failure.dart';
import 'package:face_rec/domain/core/dt_failure.dart';

abstract class IAuthFacade {
  Future<Option<String>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String fullName,
    required String accountType,
    required String matricNumber,
    required String college,
    required String department,
    String? level,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<bool> accountType();
  Future<void> signOut();
}
