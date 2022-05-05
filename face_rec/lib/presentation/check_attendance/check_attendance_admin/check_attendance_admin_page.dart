import 'dart:convert';
import 'dart:developer';
import 'dart:io' as io;

import 'package:face_rec/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:face_rec/application/check_attendance/check_attendance_admin_bloc/check_attendance_admin_bloc.dart';
import 'package:face_rec/domain/register_student/student_detail.dart';
import 'package:face_rec/injection.dart';
import 'package:face_rec/presentation/core/widgets/widgets.dart';
import 'package:kt_dart/kt.dart';

class CheckAttendanceAdminPage extends StatelessWidget {
  const CheckAttendanceAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckAttendanceAdminBloc>(),
      child: const CheckAttendanceAdminView(),
    );
  }
}

class CheckAttendanceAdminView extends HookWidget {
  const CheckAttendanceAdminView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void converttoImage({required String image, required String fullname}) {
      try {
        final decodedBytes = base64Decode(image);
        var file = io.File('$fullname.png');
        return file.writeAsBytesSync(decodedBytes);
      } on PlatformException catch (e) {
        log('-----Failed to pick image at: $e ----');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View Attendance',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocBuilder<CheckAttendanceAdminBloc, CheckAttendanceAdminState>(
        builder: (context, state) {
          final success = state.failureOrSucess.fold(
              () {},
              (failureOrSuccess) =>
                  failureOrSuccess.fold((_) {}, (studentList) => studentList));

          return SingleChildScrollView(
            child: SizedBox(
              height: 800,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                        width: 500,
                        child: InitialState(state: state, context: context)),
                  ),
                  state.isLoading
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text('Loading data..'),
                              SizedBox(
                                width: 34,
                                child: LinearProgressIndicator(
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  state.failureOrSucess.isSome()
                      ? Expanded(
                          flex: 3,
                          child: Responsive(
                            mobile: ForMobileView(success: success),
                            tablet: ForMobileView(success: success),
                            desktop: DesktopListView(success: success),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DesktopListView extends StatelessWidget {
  const DesktopListView({
    Key? key,
    required this.success,
  }) : super(key: key);

  final KtList<Student>? success;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Attendance List'),
            SizedBox(
                height: 400,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: success?.size,
                    itemBuilder: (context, index) {
                      final itemList = success?[index];
                      return DataTable(
                        columns: const [
                          DataColumn(label: Text('Full name')),
                          DataColumn(label: Text('matric Number')),
                          DataColumn(label: Text('Level')),
                          DataColumn(label: Text('Department')),
                          DataColumn(label: Text('College')),
                          DataColumn(label: Text('Attendance Amount')),
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(Text(itemList?.fullname ?? '')),
                              DataCell(Text(itemList?.matricNumber ?? '')),
                              DataCell(Text(itemList?.level ?? '')),
                              DataCell(Text(itemList?.department ?? '')),
                              DataCell(Text(itemList?.college ?? '')),
                              DataCell(Text(itemList?.attendance?.values.length
                                      .toString() ??
                                  'Zero')),
                            ],
                          ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class ForMobileView extends StatelessWidget {
  const ForMobileView({
    Key? key,
    required this.success,
  }) : super(key: key);

  final KtList<Student>? success;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.maxFinite,
      child: ListView.builder(
          itemCount: success?.size,
          itemBuilder: (context, index) {
            final itemList = success?[index];
            return AttendanceCardUI(
              fullname: itemList?.fullname,
              matricNumber: itemList?.matricNumber,
              level: itemList?.level,
              college: itemList?.college,
              department: itemList?.department,
              attendanceAmount: itemList?.attendance?.values.length,
              attendanceList: itemList?.attendance?.values.toList(),
            );
          }),
    );
  }
}

class InitialState extends HookWidget {
  InitialState({
    Key? key,
    required this.state,
    required this.context,
  }) : super(key: key);
  final CheckAttendanceAdminState state;
  final BuildContext context;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final List<String> colledgeItems = [
      'Engineering',
      'Sciences',
      'Law',
    ];
    final List<String> departmentItems = [
      'Computer Engineering',
      'Civil Engineering',
      'Electrical Engineering'
    ];
    final List<String> levelsItems = [
      '100',
      '200',
      '300',
      '400',
      '500',
    ];
    ElevatedButton buildQuery(BuildContext context) {
      return ElevatedButton(
        onPressed: state.isLoading
            ? null
            : () {
                final isValid = _formKey.currentState!.validate();

                FocusScope.of(context).unfocus();
                if (isValid) {
                  _formKey.currentState!.save();
                  context
                      .read<CheckAttendanceAdminBloc>()
                      .add(const CheckAttendanceAdminEvent.viewAttendance());
                }
              },
        child: const Text('Query'),
      );
    }

    return BlocBuilder<CheckAttendanceAdminBloc, CheckAttendanceAdminState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 350,
            width: 200,
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: 300,
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    const SizedBox(height: 16),
                    DropDownMenu(
                      name: 'select colledge',
                      items: colledgeItems,
                      value: state.college,
                      context: context,
                      onChanged: (value) => context
                          .read<CheckAttendanceAdminBloc>()
                          .add(CheckAttendanceAdminEvent.collegeChanged(
                              collegeStr: value!)),
                    ),
                    const SizedBox(height: 16),
                    DropDownMenu(
                      name: 'select department',
                      items: departmentItems,
                      value: state.department,
                      context: context,
                      onChanged: (value) => context
                          .read<CheckAttendanceAdminBloc>()
                          .add(CheckAttendanceAdminEvent.departmentChanged(
                              departmentStr: value!)),
                    ),
                    const SizedBox(height: 16),
                    DropDownMenu(
                      name: 'select level',
                      items: levelsItems,
                      value: state.level,
                      context: context,
                      onChanged: (value) => context
                          .read<CheckAttendanceAdminBloc>()
                          .add(CheckAttendanceAdminEvent.levelChanged(
                              levelStr: value!)),
                    ),
                    const SizedBox(height: 16),
                    buildQuery(context)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
