import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:face_rec/domain/auth/auth_failure.dart';
import 'package:face_rec/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final IAuthFacade _iAuthFacade;
  SignUpCubit(this._iAuthFacade) : super(SignUpState.initial());
  void emailChange(String value) {
    emit(
      state.copyWith(
        emailAddress: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void passwordChange(String value) {
    emit(
      state.copyWith(
        password: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void accountTypeChange(String value) {
    emit(
      state.copyWith(
        accountType: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void fullNameChange(String value) {
    emit(
      state.copyWith(
        fullName: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void matricNumberChange(String value) {
    emit(
      state.copyWith(
        matricNumber: value.toUpperCase(),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void collegeChange(String value) {
    emit(
      state.copyWith(
        college: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void departmentChange(String value) {
    emit(
      state.copyWith(
        department: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void levelChange(String value) {
    emit(
      state.copyWith(
        level: value,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void registerWithCredentials() async {
    emit(state.copyWith(isSubmitting: true));
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(
        await _iAuthFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
          accountType: state.accountType!,
          college: state.college!,
          department: state.department!,
          fullName: state.fullName,
          level: state.level ?? '',
          matricNumber: state.matricNumber,
        ),
      ),
    ));
  }
}
