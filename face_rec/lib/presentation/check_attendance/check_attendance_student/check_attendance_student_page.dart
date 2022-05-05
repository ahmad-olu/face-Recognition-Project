import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CheckAttendanceStudentPage extends StatelessWidget {
  const CheckAttendanceStudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CheckAttendanceStudentView();
  }
}

class CheckAttendanceStudentView extends HookWidget {
  const CheckAttendanceStudentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ElevatedButton buildQuery() {
      return ElevatedButton(
        onPressed: () {},
        child: const Text('Amount of Attendace'),
      );
    }

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 450,
          child: Column(
            children: [
              Text(
                'View Attendance',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 56),
              buildQuery(),
            ],
          ),
        ),
      ),
    );
  }
}
