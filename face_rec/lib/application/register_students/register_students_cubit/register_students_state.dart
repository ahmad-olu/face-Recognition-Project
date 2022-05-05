part of 'register_students_cubit.dart';

@freezed
class RegisterStudentsState with _$RegisterStudentsState {
  RegisterStudentsState._();
  factory RegisterStudentsState({
    required String pictures,
    required String fullname,
    required String matricNumber,
    String? college,
    String? department,
    String? level,
    required bool isLoading,
    required Option<Either<DtFailure, Unit>> studentFailureOrSuccess,
  }) = _RegisterStudentsState;
  factory RegisterStudentsState.initial() => _RegisterStudentsState(
        pictures: '',
        fullname: '',
        matricNumber: '',
        college: null,
        department: null,
        level: null,
        isLoading: false,
        studentFailureOrSuccess: none(),
      );

  final List<String> colledgeItems = [
    'Engineering',
    'Sciences',
    'Law',
    'SMS',
    'MHS'
  ];
  final List<String> engineeringdepartmentItems = [
    'Computer Engineering',
    'Civil Engineering',
    'Electrical Engineering'
  ];
  final List<String> sciencesdepartmentItems = [
    'Computer Science',
  ];
  final List<String> lawdepartmentItems = [];
  final List<String> smsdepartmentItems = [
    'Accounting',
  ];
  final List<String> mhsdepartmentItems = [
    'Medicine',
    'Nursing',
  ];
  final List<String> levelsItems = [
    '100',
    '200',
    '300',
    '400',
    '500',
  ];
  List<String> departmentList() {
    if (college == 'Engineering') {
      return engineeringdepartmentItems;
    } else if (college == 'Sciences') {
      return sciencesdepartmentItems;
    } else if (college == 'Law') {
      return lawdepartmentItems;
    } else if (college == 'SMS') {
      return smsdepartmentItems;
    } else if (college == 'MHS') {
      return mhsdepartmentItems;
    } else {
      return [];
    }
  }
}
