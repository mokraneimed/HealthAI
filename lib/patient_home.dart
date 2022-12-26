import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/hospitals.dart';
import 'package:flutter_application_1/monitor.dart';
import 'package:flutter_application_1/homepage.dart';

int activePage = 0;
List pages = [
  LoginPage(),
  HospitalsPage(),
  HomePage(),
];

class PatientHome extends StatefulWidget {
  const PatientHome({Key? key}) : super(key: key);
  @override
  State<PatientHome> createState() => _PatientHome();
}

@override
class _PatientHome extends State<PatientHome> {
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      activePage = taskProvider.activePage;
      return pages[activePage];
    });
  }
}
