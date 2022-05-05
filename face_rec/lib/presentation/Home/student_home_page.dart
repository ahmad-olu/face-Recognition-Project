import 'package:flutter/material.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StudentHomeValue();
  }
}

class StudentHomeValue extends StatelessWidget {
  const StudentHomeValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('dat page'),
      ),
    );
  }
}
