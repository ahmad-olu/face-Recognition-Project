part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  SignUpState._();
  factory SignUpState({
    required String emailAddress,
    required String password,
    required String fullName,
    required String matricNumber,
    String? accountType,
    String? college,
    String? department,
    String? level,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
        emailAddress: '',
        password: '',
        accountType: null,
        college: null,
        department: null,
        fullName: '',
        level: null,
        matricNumber: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );

  final List<String> accountTypeList = [
    'Admin',
    'Student',
  ];

  final List<String> colledgeItemsList = [
    'Engineering',
    'Sciences',
    'Law',
  ];
  final List<String> departmentItemsList = [
    'Computer Engineering',
    'Civil Engineering',
    'Electrical Engineering'
  ];
  final List<String> levelsItemsList = [
    '100',
    '200',
    '300',
    '400',
    '500',
  ];
}
