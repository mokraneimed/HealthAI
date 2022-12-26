import 'package:flutter/material.dart';
import 'package:flutter_application_1/carousel.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/hospitals.dart';
import 'package:flutter_application_1/monitor.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/role.dart';

int activePage = 0;

List pages = [
  Carousel(),
  RolePage(),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _Home();
}

@override
class _Home extends State<Home> {
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      activePage = taskProvider.splashPage;
      return pages[activePage];
    });
  }
}
