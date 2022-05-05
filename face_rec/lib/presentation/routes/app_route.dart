import 'package:auto_route/auto_route.dart';
import 'package:face_rec/presentation/Home/admin_home_page.dart';
import 'package:face_rec/presentation/Home/student_home_page.dart';
import 'package:face_rec/presentation/check_attendance/check_attendance_admin/check_attendance_admin_page.dart';
import 'package:face_rec/presentation/register_students/register_student_page.dart';
import 'package:face_rec/presentation/sign_in/sign_in_page.dart';
import 'package:face_rec/presentation/sign_up/sign_up_page.dart';
import 'package:face_rec/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage, path: 'sign-in'),
    AutoRoute(page: SignUpPage, path: 'sign-up'),
    AutoRoute(page: RegisterStudentPage, path: 'register-student'),
    AutoRoute(page: CheckAttendanceAdminPage, path: 'check-attendance'),
    AutoRoute(page: AdminHomePage, path: 'admin-home'),
    AutoRoute(page: StudentHomePage, path: 'student-home'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
