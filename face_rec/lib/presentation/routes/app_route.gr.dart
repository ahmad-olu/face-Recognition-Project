// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../check_attendance/check_attendance_admin/check_attendance_admin_page.dart'
    as _i5;
import '../Home/admin_home_page.dart' as _i6;
import '../Home/student_home_page.dart' as _i7;
import '../register_students/register_student_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i2;
import '../sign_up/sign_up_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    RegisterStudentRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterStudentPage());
    },
    CheckAttendanceAdminRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CheckAttendanceAdminPage());
    },
    AdminHomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AdminHomePage());
    },
    StudentHomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.StudentHomePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(SignInRoute.name, path: 'sign-in'),
        _i8.RouteConfig(SignUpRoute.name, path: 'sign-up'),
        _i8.RouteConfig(RegisterStudentRoute.name, path: 'register-student'),
        _i8.RouteConfig(CheckAttendanceAdminRoute.name,
            path: 'check-attendance'),
        _i8.RouteConfig(AdminHomeRoute.name, path: 'admin-home'),
        _i8.RouteConfig(StudentHomeRoute.name, path: 'student-home')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.RegisterStudentPage]
class RegisterStudentRoute extends _i8.PageRouteInfo<void> {
  const RegisterStudentRoute()
      : super(RegisterStudentRoute.name, path: 'register-student');

  static const String name = 'RegisterStudentRoute';
}

/// generated route for
/// [_i5.CheckAttendanceAdminPage]
class CheckAttendanceAdminRoute extends _i8.PageRouteInfo<void> {
  const CheckAttendanceAdminRoute()
      : super(CheckAttendanceAdminRoute.name, path: 'check-attendance');

  static const String name = 'CheckAttendanceAdminRoute';
}

/// generated route for
/// [_i6.AdminHomePage]
class AdminHomeRoute extends _i8.PageRouteInfo<void> {
  const AdminHomeRoute() : super(AdminHomeRoute.name, path: 'admin-home');

  static const String name = 'AdminHomeRoute';
}

/// generated route for
/// [_i7.StudentHomePage]
class StudentHomeRoute extends _i8.PageRouteInfo<void> {
  const StudentHomeRoute() : super(StudentHomeRoute.name, path: 'student-home');

  static const String name = 'StudentHomeRoute';
}
