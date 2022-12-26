import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/fetch.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPage();
}

class _StatusPage extends State<StatusPage> {
  final data_service = DataService();
  late Future<Patient> patient;
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Container(
              width: width,
              height: height,
              padding: EdgeInsets.only(top: height * 0.08),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(87, 214, 240, 0),
                  Color.fromRGBO(79, 207, 234, 0.3)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(children: [
                Image.asset("assets/images/HealthAI.png"),
                SizedBox(
                  height: height * 0.1,
                ),
                const Text("Real time monitoring system",
                    style: TextStyle(
                        fontFamily: 'SofiaPro',
                        fontSize: 22,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: height * 0.02),
                Button(
                    url: "assets/images/home.png",
                    back_color: Color.fromRGBO(65, 68, 113, 1),
                    text_color: Colors.white,
                    text: "Monitoring From Home"),
                SizedBox(height: height * 0.02),
                Button(
                    url: "assets/images/white_watch.png",
                    back_color: Color.fromRGBO(65, 68, 113, 1),
                    text_color: Colors.white,
                    text: "Smart watch"),
                SizedBox(height: height * 0.05),
                const Text("Status check",
                    style: TextStyle(
                        fontFamily: 'SofiaPro',
                        fontSize: 22,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: height * 0.02),
                Button(
                    url: "assets/images/ok.png",
                    back_color: Color.fromRGBO(10, 132, 87, 1),
                    text_color: Colors.white,
                    text: "Normal state"),
                SizedBox(height: height * 0.05),
                const Text("Actions",
                    style: TextStyle(
                        fontFamily: 'SofiaPro',
                        fontSize: 22,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: height * 0.02),
                Button(
                    url: "assets/images/ambu.png",
                    back_color: Color.fromRGBO(203, 36, 56, 0.4),
                    text_color: Colors.white,
                    text: "Ambulance call"),
              ])),
        ]));
  }
}
