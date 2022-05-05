import 'package:flutter/material.dart';

class AttendanceCardUI extends StatelessWidget {
  const AttendanceCardUI({
    Key? key,
    required this.fullname,
    required this.matricNumber,
    required this.level,
    required this.college,
    required this.department,
    this.attendanceAmount,
    this.attendanceList,
  }) : super(key: key);
  final String? fullname;
  final String? matricNumber;
  final String? level;
  final String? college;
  final String? department;
  final int? attendanceAmount;
  final List? attendanceList;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('fullname => ${fullname ?? ''}')),
                const Expanded(child: Text(''))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('mat-Num=> ${matricNumber ?? ''}')),
                Expanded(child: Text('level=> ${level ?? ''} L')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('department=> ${department ?? ''}')),
                Expanded(child: Text('college=> ${college ?? ''}')),
              ],
            ),
          ),
          SizedBox(
            width: 400,
            height: 19,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 1,
                      child:
                          Text('Att Amount => ${attendanceAmount ?? 'Zero'}')),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      width: 200,
                      child: ListView.builder(
                        itemCount: attendanceList?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final itemList = attendanceList?[index];
                          return Text('Att List => ${itemList ?? ''}');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
