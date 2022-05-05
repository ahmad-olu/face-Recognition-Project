import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_attendance_student_state.dart';
part 'check_attendance_student_cubit.freezed.dart';

class CheckAttendanceStudentCubit extends Cubit<CheckAttendanceStudentState> {
  CheckAttendanceStudentCubit() : super(CheckAttendanceStudentState.initial());
}
