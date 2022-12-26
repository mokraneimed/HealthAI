import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
                height: height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/user.png"),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Kamel Brouthen",
                    style: TextStyle(
                        fontFamily: 'SofiaPro',
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Monitoring Adress",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Button(
                  url: "assets/images/hospital.png",
                  back_color: Color.fromRGBO(65, 68, 113, 1),
                  text_color: Colors.white,
                  text: "Batna Province Hospital"),
              SizedBox(
                height: height * 0.01,
              ),
              Button(
                  url: "assets/images/home.png",
                  back_color: Color.fromRGBO(65, 68, 113, 1),
                  text_color: Colors.white,
                  text: "Street 96, N:004"),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Supervisor Doctor",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Button(
                  url: "assets/images/doctor.png",
                  back_color: Color.fromRGBO(65, 68, 113, 1),
                  text_color: Colors.white,
                  text: "Moncef Samai"),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Linked Device",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Button(
                  url: "assets/images/white_watch.png",
                  back_color: Color.fromRGBO(65, 68, 113, 1),
                  text_color: Colors.white,
                  text: "Samsung S87 Edge"),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Medical Report",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Button(
                  url: "assets/images/download.png",
                  back_color: Colors.white,
                  text_color: Color.fromRGBO(65, 68, 113, 1),
                  text: "Download Medical Report"),
            ])));
  }
}
