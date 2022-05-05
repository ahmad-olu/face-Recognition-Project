import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_attendance_model_student.freezed.dart';
part 'check_attendance_model_student.g.dart';

@freezed
class CheckAttStudent with _$CheckAttStudent {
  const CheckAttStudent._();
  const factory CheckAttStudent({
    required String id,
    required List<String> attendance,
  }) = _CheckAttStudent;

  factory CheckAttStudent.fromJson(Map<String, dynamic> json) =>
      _$CheckAttStudentFromJson(json);
}
