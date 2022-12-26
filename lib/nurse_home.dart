import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage_n.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/hospitals.dart';
import 'package:flutter_application_1/monitor.dart';
import 'package:flutter_application_1/homepage.dart';

int activePage = 0;
List pages = [
  LoginPage(),
  Home_nPage(),
];

class NurseHome extends StatefulWidget {
  const NurseHome({Key? key}) : super(key: key);
  @override
  State<NurseHome> createState() => _NurseHome();
}

@override
class _NurseHome extends State<NurseHome> {
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      activePage = taskProvider.activePage;
      return pages[activePage];
    });
  }
}
