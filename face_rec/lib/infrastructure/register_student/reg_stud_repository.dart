import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:face_rec/domain/core/dt_failure.dart';
import 'package:face_rec/domain/register_student/i_student_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:face_rec/domain/register_student/student_detail.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IStudentRepository)
class StudentRepository implements IStudentRepository {
  final FirebaseDatabase _firebaseDatabase;
  final FirebaseAuth _firebaseAuth;

  StudentRepository(this._firebaseDatabase, this._firebaseAuth);

  @override
  Future<Either<DtFailure, Unit>> createStudent({
    required String pictures,
    required String fullname,
    required String matricNumber,
    required String college,
    required String department,
    required String level,
  }) async {
    final studentref = _firebaseDatabase.ref(
        "studentsDetail/${_firebaseAuth.currentUser?.uid}/$college/$department/$level");
    final id = studentref.push();
    final studentModel = {
      'userId': "",
      'level': level,
      'picture': pictures,
      'fullname': fullname,
      'matriculation number': matricNumber.toUpperCase(),
      'college': college,
      'department': department,
      'attendance': <String>[]
    };
    try {
      await id.set(studentModel);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DtFailure.insufficientPermission());
      } else {
        log('==========> fuckkkkkkk ======>${e.code}=======> ${e.message} ======> ${e.stackTrace}');
        return left(const DtFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DtFailure, KtList<Student>>> viewAttendance(
      String college, String department, String level) async {
    try {
      final snapshot = await _firebaseDatabase
          .ref()
          .child(
              "studentsDetail/${_firebaseAuth.currentUser?.uid}/$college/$department/$level")
          .get();
      if (snapshot.exists) {
        final data = jsonDecode(jsonEncode(snapshot.value));

        final students = (data as Map<String, dynamic>)
            .map(
              (key, value) => MapEntry(
                  key, Student.fromJson(value as Map<String, dynamic>)),
            )
            .values
            .toImmutableList();
        return right(students);
      } else {
        return right(const KtList.empty());
      }
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DtFailure.insufficientPermission());
      } else {
        log('=======> ${e.code}======> ${e.message}');
        return left(const DtFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DtFailure, KtList<String>>> amountOfAttendance({
    required String matricNumber,
    required String level,
    required String college,
    required String department,
  }) async {
    final ref = _firebaseDatabase.ref();
    try {
      final snapshot =
          await ref.child("$college/$department/$level/$matricNumber").get();
      final json = snapshot.value as Map<String, dynamic>;
      final convert = Student.fromJson(json);
      return right(KtList.of(convert.matricNumber));
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DtFailure.insufficientPermission());
      } else {
        return left(const DtFailure.unexpected());
      }
    }
  }
}
