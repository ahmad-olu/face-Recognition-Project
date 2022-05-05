import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:face_rec/domain/core/dt_failure.dart';
import 'package:face_rec/domain/register_student/i_student_repository.dart';
import 'package:face_rec/domain/register_student/student_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'check_attendance_admin_event.dart';
part 'check_attendance_admin_state.dart';
part 'check_attendance_admin_bloc.freezed.dart';

@injectable
class CheckAttendanceAdminBloc
    extends Bloc<CheckAttendanceAdminEvent, CheckAttendanceAdminState> {
  final IStudentRepository _iStudentRepository;
  CheckAttendanceAdminBloc(this._iStudentRepository)
      : super(CheckAttendanceAdminState.initial()) {
    on<CheckAttendanceAdminEvent>((event, emit) async {
      await event.map(
        departmentChanged: (e) async {
          emit(state.copyWith(
              department: e.departmentStr, failureOrSucess: none()));
        },
        collegeChanged: (e) async {
          emit(state.copyWith(college: e.collegeStr, failureOrSucess: none()));
        },
        levelChanged: (e) async {
          emit(state.copyWith(level: e.levelStr, failureOrSucess: none()));
        },
        viewAttendance: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrSuccess = await _iStudentRepository.viewAttendance(
            state.college!,
            state.department!,
            state.level!,
          );
          emit(state.copyWith(
            isLoading: false,
            failureOrSucess: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
