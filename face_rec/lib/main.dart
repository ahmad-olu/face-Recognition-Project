import 'dart:developer';
import 'dart:convert';

import 'package:face_rec/application/auth/auth_bloc/auth_bloc.dart';
import 'package:face_rec/application/auth/check_auth_type_bloc/check_auth_type_bloc.dart';
import 'package:face_rec/blocObserver.dart';
import 'package:face_rec/domain/register_student/student_detail.dart';
import 'package:face_rec/firebase_options.dart';
import 'package:face_rec/image_picker_page.dart';
import 'package:face_rec/injection.dart';
import 'package:face_rec/presentation/Home/admin_home_page.dart';
import 'package:face_rec/presentation/register_students/register_student_page.dart';
import 'package:face_rec/presentation/routes/app_route.gr.dart';
import 'package:face_rec/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'presentation/check_attendance/check_attendance_admin/check_attendance_admin_page.dart';
import 'presentation/check_attendance/check_attendance_student/check_attendance_student_page.dart';
import 'presentation/sign_up/sign_up_page.dart';

Future<void> main() async {
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      configureInjection(Environment.dev);
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ).whenComplete(() => log('AppInitializationCompleted'));

      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}

class TrialApp extends StatelessWidget {
  const TrialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const ShowApp()));
  }
}

class ShowApp extends StatefulWidget {
  const ShowApp({Key? key}) : super(key: key);

  @override
  State<ShowApp> createState() => _ShowAppState();
}

class _ShowAppState extends State<ShowApp> {
  final database = FirebaseDatabase.instance;
  final firebaseAuth = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    _createAccountType();
    _checkStatus();

    super.initState();
  }

  void _createAccountType() async {
    try {
      final snapshot = database.ref('accountCheck/${firebaseAuth?.uid}').push();
      await snapshot.set('Admin');
      log('created');
    } catch (e) {
      log('send error ====> $e');
    }
  }

  void _checkStatus() async {
    try {
      final snapshot =
          await database.ref().child('accountCheck/${firebaseAuth?.uid}').get();
      if (snapshot.exists) {
        final data =
            jsonDecode(jsonEncode(snapshot.value)) as Map<String, dynamic>;
        final user = data.values.toList();
        user[0] == 'Admin' ? log(true.toString()) : log(false.toString());
        log(user[0].toString());
        log('recieved');
      }
    } catch (e) {
      log('get error ===> $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(''));
  }
}
