// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_database/firebase_database.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc/auth_bloc.dart' as _i12;
import 'application/auth/check_auth_type_bloc/check_auth_type_bloc.dart'
    as _i14;
import 'application/auth/sign_in_cubit/sign_in_cubit.dart' as _i10;
import 'application/auth/sign_upcubit/sign_up_cubit.dart' as _i11;
import 'application/check_attendance/check_attendance_admin_bloc/check_attendance_admin_bloc.dart'
    as _i13;
import 'application/register_students/register_students_cubit/register_students_cubit.dart'
    as _i9;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/register_student/i_student_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;
import 'infrastructure/register_student/reg_stud_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseDatabase>(
      () => firebaseInjectableModule.firebaseDatabase);
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i4.FirebaseDatabase>()));
  gh.lazySingleton<_i7.IStudentRepository>(() => _i8.StudentRepository(
      get<_i4.FirebaseDatabase>(), get<_i3.FirebaseAuth>()));
  gh.factory<_i9.RegisterStudentsCubit>(
      () => _i9.RegisterStudentsCubit(get<_i7.IStudentRepository>()));
  gh.factory<_i10.SignInCubit>(() => _i10.SignInCubit(get<_i5.IAuthFacade>()));
  gh.factory<_i11.SignUpCubit>(() => _i11.SignUpCubit(get<_i5.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i13.CheckAttendanceAdminBloc>(
      () => _i13.CheckAttendanceAdminBloc(get<_i7.IStudentRepository>()));
  gh.factory<_i14.CheckAuthTypeBloc>(
      () => _i14.CheckAuthTypeBloc(get<_i5.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
