part of 'check_attendance_admin_bloc.dart';

@freezed
class CheckAttendanceAdminEvent with _$CheckAttendanceAdminEvent {
  const factory CheckAttendanceAdminEvent.departmentChanged(
      {required String departmentStr}) = _DepartmentChanged;
  const factory CheckAttendanceAdminEvent.collegeChanged(
      {required String collegeStr}) = _CollegeChanged;
  const factory CheckAttendanceAdminEvent.levelChanged(
      {required String levelStr}) = _LevelChanged;
  const factory CheckAttendanceAdminEvent.viewAttendance() = _ViewAttendance;
}
