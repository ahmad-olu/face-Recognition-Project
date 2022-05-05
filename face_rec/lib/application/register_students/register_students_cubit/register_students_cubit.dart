import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:face_rec/domain/core/dt_failure.dart';
import 'package:face_rec/domain/register_student/i_student_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_students_state.dart';
part 'register_students_cubit.freezed.dart';

@injectable
class RegisterStudentsCubit extends Cubit<RegisterStudentsState> {
  final IStudentRepository _iStudentRepository;
  RegisterStudentsCubit(this._iStudentRepository)
      : super(RegisterStudentsState.initial());

  void pictureChanged(String value) {
    emit(state.copyWith(
      pictures: value,
      studentFailureOrSuccess: none(),
    ));
  }

  void fullnameChanged(String value) {
    emit(state.copyWith(
      fullname: value,
      studentFailureOrSuccess: none(),
    ));
  }

  void matricNumberChanged(String value) {
    emit(state.copyWith(
      matricNumber: value.toUpperCase(),
      studentFailureOrSuccess: none(),
    ));
  }

  void collegeChanged(String value) {
    emit(state.copyWith(
      college: value,
      studentFailureOrSuccess: none(),
    ));
  }

  void departmentChanged(String value) {
    emit(state.copyWith(
      department: value,
      studentFailureOrSuccess: none(),
    ));
  }

  void levelChanged(String value) {
    emit(state.copyWith(
      level: value,
      studentFailureOrSuccess: none(),
    ));
  }

  void submitCredential() async {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
      isLoading: false,
      studentFailureOrSuccess: optionOf(await _iStudentRepository.createStudent(
        pictures: state.pictures,
        fullname: state.fullname,
        college: state.college!,
        matricNumber: state.matricNumber,
        department: state.department!,
        level: state.level!,
      )),
    ));
  }
}
