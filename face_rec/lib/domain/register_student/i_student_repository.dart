import 'package:dartz/dartz.dart';
import 'package:face_rec/domain/core/dt_failure.dart';
import 'package:face_rec/domain/register_student/student_detail.dart';
import 'package:kt_dart/kt.dart';

abstract class IStudentRepository {
  Future<Either<DtFailure, Unit>> createStudent({
    required String pictures,
    required String fullname,
    required String matricNumber,
    required String college,
    required String department,
    required String level,
  });
  Future<Either<DtFailure, KtList<Student>>> viewAttendance(
    String collegeStr,
    String departmentStr,
    String levelStr,
  );
  Future<Either<DtFailure, KtList<String>>> amountOfAttendance({
    required String college,
    required String department,
    required String matricNumber,
    required String level,
  });
}
