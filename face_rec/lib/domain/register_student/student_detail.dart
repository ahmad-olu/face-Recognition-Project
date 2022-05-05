import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_detail.freezed.dart';
part 'student_detail.g.dart';

@freezed
class Student with _$Student {
  const Student._();
  const factory Student({
    @JsonKey(name: 'userid') String? id,
    required String level,
    required String picture,
    required String fullname,
    @JsonKey(name: 'matriculation number') required String matricNumber,
    required String college,
    required String department,
    Map? attendance,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

@freezed
class Attendance with _$Attendance {
  const Attendance._();
  const factory Attendance({
    Map? attendance,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}
