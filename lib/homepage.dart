import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/monitor.dart';
import 'package:flutter_application_1/scheudle.dart';
import 'package:flutter_application_1/chat.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/status.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

List pages = [MonitorPage(), ScheudlePage(), ChatPage(), ProfilePage()];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePage();
}

@override
class _HomePage extends State<HomePage> {
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
              icon: Icon(Icons.chat, size: 32),
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
