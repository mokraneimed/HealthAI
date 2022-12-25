import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/hospitals.dart';
import 'package:flutter_application_1/monitor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MonitorPage(),
    );
  }
}
