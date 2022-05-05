import 'dart:convert';
import 'dart:developer';

import 'package:face_rec/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:face_rec/domain/auth/i_auth_facade.dart';
import 'package:face_rec/domain/auth/user.dart';
import 'package:face_rec/domain/core/dt_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseDatabase _firebaseDatabase;
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firebaseDatabase,
  );
  @override
  Future<Option<String>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.uid);

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        log('${e.code} =====> ${e.message} =======> ${e.stackTrace}');
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String fullName,
    required String accountType,
    required String matricNumber,
    required String college,
    required String department,
    String? level,
  }) async {
    final ref = _firebaseDatabase.ref('users/$accountType/').push();
    final ref2 = _firebaseDatabase
        .ref('accountCheck/${_firebaseAuth.currentUser?.uid}/')
        .push();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      await ref.set({
        'accountId': "${_firebaseAuth.currentUser?.uid}",
        'fullname': fullName,
        'email': emailAddress,
        'accountTpe': accountType,
        'matricNumber': matricNumber,
        'college': college,
        'department': department,
        'level': level ?? '',
      });
      await ref.set({'${_firebaseAuth.currentUser?.uid}': accountType});
      await ref2.set(accountType);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        log('error code ==> ${e.code}....error message ===> ${e.message}..... ====>error stacktrace ${e.stackTrace}');
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<bool> accountType() async {
    final snapshot = await _firebaseDatabase
        .ref()
        .child('accountCheck/${_firebaseAuth.currentUser?.uid}')
        .get();
    final data = jsonDecode(jsonEncode(snapshot.value)) as Map<String, dynamic>;
    final user = data.values.toList();
    return user[0] == 'Admin' ? true : false;
  }
}
