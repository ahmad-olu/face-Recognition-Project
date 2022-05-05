part of 'check_attendance_admin_bloc.dart';

@freezed
class CheckAttendanceAdminState with _$CheckAttendanceAdminState {
  const factory CheckAttendanceAdminState({
    String? college,
    String? department,
    String? level,
    required bool isLoading,
    required Option<Either<DtFailure, KtList<Student>>> failureOrSucess,
  }) = _CheckAttendanceAdminState;
  factory CheckAttendanceAdminState.initial() => _CheckAttendanceAdminState(
        college: null,
        department: null,
        level: null,
        isLoading: false,
        failureOrSucess: none(),
      );
}
