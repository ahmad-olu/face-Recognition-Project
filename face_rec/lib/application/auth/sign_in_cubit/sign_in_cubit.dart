import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:face_rec/domain/auth/auth_failure.dart';
import 'package:face_rec/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final IAuthFacade _iAuthFacade;
  SignInCubit(this._iAuthFacade) : super(SignInState.initial());

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

  void loginWithCredentials() async {
    emit(state.copyWith(isSubmitting: true));
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(
        await _iAuthFacade.signInWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        ),
      ),
    ));
  }
}
