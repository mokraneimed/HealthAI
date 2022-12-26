import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/monitor.dart';
import 'package:flutter_application_1/scheudle.dart';
import 'package:flutter_application_1/chat.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:flutter_application_1/shift.dart';

List pages = [ShiftPage(), ScheudlePage(), ChatPage()];

class Home_nPage extends StatefulWidget {
  const Home_nPage({Key? key}) : super(key: key);
  @override
  State<Home_nPage> createState() => _Home_nPage();
}

@override
class _Home_nPage extends State<Home_nPage> {
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      var page_n = taskProvider.page_n;
      return Scaffold(
        bottomNavigationBar: MoltenBottomNavigationBar(
          selectedIndex: page_n,
          domeCircleColor: Color.fromRGBO(65, 68, 113, 1),
          onTabChange: (clickedIndex) {
            setState(() {
              taskProvider.changeIndex(clickedIndex);
            });
          },
          tabs: [
            MoltenTab(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              unselectedColor: Color.fromRGBO(65, 68, 113, 1),
            ),
            MoltenTab(
              icon: Icon(
                Icons.schedule_outlined,
                size: 32,
              ),
              unselectedColor: Color.fromRGBO(65, 68, 113, 1),
            ),
            MoltenTab(
              icon: Icon(Icons.person, size: 32),
              unselectedColor: Color.fromRGBO(65, 68, 113, 1),
            ),
          ],
        ),
        body: pages.elementAt(page_n),
      );
    });
  }
}
