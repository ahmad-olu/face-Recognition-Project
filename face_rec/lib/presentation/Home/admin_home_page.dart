import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:face_rec/application/auth/auth_bloc/auth_bloc.dart';
import 'package:face_rec/presentation/routes/app_route.gr.dart';
import 'package:face_rec/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AdminHomeView();
  }
}

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            unauthenticated: (_) => AutoRouter.of(context).replace(
                  const SignInRoute(),
                ),
            orElse: () {});
      },
      child: const Scaffold(
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Responsive(
            mobile: ResponsiveHomeList(iscolumn: true),
            tablet: ResponsiveHomeList(iscolumn: false, flex: [3, 1]),
            desktop: ResponsiveHomeList(iscolumn: false, flex: [3, 2]),
          ),
        )),
      ),
    );
  }
}

class ResponsiveHomeList extends StatelessWidget {
  const ResponsiveHomeList({
    Key? key,
    required this.iscolumn,
    this.flex,
  }) : super(key: key);
  final bool iscolumn;
  final List? flex;

  @override
  Widget build(BuildContext context) {
    return iscolumn
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'face rec home',
                style: Theme.of(context).textTheme.headline3,
              ),
              HomeButtons(
                onTap: () => context.router.push(const RegisterStudentRoute()),
                assetName: 'assets/images/text-dynamic-color.png',
                imageText: 'Register Students',
              ),
              HomeButtons(
                  onTap: () =>
                      context.router.push(const CheckAttendanceAdminRoute()),
                  assetName: 'assets/images/folder-dynamic-premium.png',
                  imageText: 'Check Attendance'),
              HomeButtons(
                  onTap: () => context.read<AuthBloc>()
                    ..add(const AuthEvent.signedOut()),
                  assetName: 'assets/images/can-dynamic-color.png',
                  imageText: 'LogOut'),
            ],
          )
        : Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Expanded(
                  flex: flex?[0],
                  child: Center(
                    child: Text(
                      'face rec home',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Expanded(
                  flex: flex?[1],
                  child: HomeButtons(
                    onTap: () =>
                        context.router.push(const RegisterStudentRoute()),
                    assetName: 'assets/images/text-dynamic-color.png',
                    imageText: 'Register Students',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Expanded(
                  flex: flex?[1],
                  child: HomeButtons(
                      onTap: () => context.router
                          .push(const CheckAttendanceAdminRoute()),
                      assetName: 'assets/images/folder-dynamic-premium.png',
                      imageText: 'Check Attendance'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 5),
                child: Expanded(
                  flex: flex?[1],
                  child: HomeButtons(
                      onTap: () => context.read<AuthBloc>()
                        ..add(const AuthEvent.signedOut()),
                      assetName: 'assets/images/can-dynamic-color.png',
                      imageText: 'LogOut'),
                ),
              ),
            ],
          );
  }
}

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    Key? key,
    this.onTap,
    required this.assetName,
    required this.imageText,
  }) : super(key: key);
  final Function()? onTap;
  final String assetName;
  final String imageText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.blueGrey,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.5),
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3.4)],
        ),
        height: 175,
        width: 175,
        child: Container(
          color: Colors.white70,
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 140,
                  width: 140,
                  child: Image(
                    image: AssetImage(assetName),
                  ),
                ),
              ),
              const Divider(),
              Text(
                imageText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
